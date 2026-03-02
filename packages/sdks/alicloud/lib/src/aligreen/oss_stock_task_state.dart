// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering OssStockTask resources.
class OssStockTaskState {
  /// Voice auto freeze configuration. Example:{"type":"suggestion","value":"block,review"}. The results are frozen according to the suggestion in the speech detection results.
  final pulumi.Input<String>? audioAntispamFreezeConfig;
  /// Audio detection auto freeze switch. Value: true: automatically freeze, false: not automatically freeze.
  final pulumi.Input<bool>? audioAutoFreezeOpened;
  /// Resource property field representing the maximum size of a single audio. 1~2048MB, the default is 200MB, more than not detected.
  final pulumi.Input<int>? audioMaxSize;
  /// oss stock scan task detect audio. true: scan audio, false: do not scan audio
  final pulumi.Input<bool>? audioOpened;
  /// The upper limit of voice scan in the oss stock scan task. The default value is 1000/Bucket.
  final pulumi.Input<int>? audioScanLimit;
  /// The audio detection scenarios included in the oss stock scan task. Set the value to antispam.
  final pulumi.Input<String>? audioScenes;
  /// Automatic freeze type. Value: acl: modify permissions, copy: Move files
  final pulumi.Input<String>? autoFreezeType;
  /// Business scenarios used by the oss stock scan task
  final pulumi.Input<String>? bizType;
  /// The bucket configuration list of the oss stock scan task. Example:[{"Bucket":"bucket_01","Selected":true,"Prefixes":["img/test_"],"Type":"exclude"}]
  final pulumi.Input<String>? buckets;
  /// The ID of the primary key of the notification message bound to the oss stock scan task.
  final pulumi.Input<int>? callbackId;
  /// The end time of the file upload time range indicates the scanning of files uploaded before this time point.
  final pulumi.Input<String>? endDate;
  /// Picture automatically freezes the configuration of ad scenes. Example: {"type": "suggestion", "value": "block,review"}. The result will be frozen according to the suggestion in the picture detection result.
  final pulumi.Input<String>? imageAdFreezeConfig;
  /// Picture detection auto freeze switch. Value: true: auto freeze, false: not auto freeze.
  final pulumi.Input<bool>? imageAutoFreezeOpened;
  /// Picture automatic freezing live scene configuration. Example:{"type":"suggestion","value":"block,review"}. The result will be frozen according to the suggestion in the picture detection result.
  final pulumi.Input<String>? imageLiveFreezeConfig;
  /// oss stock scan task detect images. true: scan images, false: do not scan images
  final pulumi.Input<bool>? imageOpened;
  /// Picture automatic freezing porn scene configuration. Example: {"type": "suggestion", "value": "block,review"}. The result will be frozen according to the suggestion in the picture detection result.
  final pulumi.Input<String>? imagePornFreezeConfig;
  /// The upper limit for scanning images in the oss stock scan task. The default value is 10000 images per Bucket.
  final pulumi.Input<int>? imageScanLimit;
  /// The image moderation scenario included in the oss stock scan task.Valid values:
  /// porn: pornography detection
  /// terrorism: terrorist content detection
  /// ad: ad violation detection
  /// live: undesirable scene detection
  final pulumi.Input<List<String>>? imageScenes;
  /// The picture automatically freezes the configuration of terrorism scenes. Example: {"type": "suggestion", "value": "block,review"}. The result will be frozen according to the suggestion in the picture detection result.
  final pulumi.Input<String>? imageTerrorismFreezeConfig;
  /// Whether the oss stock scan task detects images with file names without suffixes. true: Detect pictures with file names without suffixes, false: Do not detect pictures with file names without suffixes
  final pulumi.Input<bool>? scanImageNoFileType;
  /// The start time of the file upload time range represents the files uploaded after scanning this time point.
  final pulumi.Input<String>? startDate;
  /// The video automatically freezes the configuration of ad scenarios. Example:{"type":"suggestion","value":"block,review"}. The results will be frozen according to the suggestion in the video detection results.
  final pulumi.Input<String>? videoAdFreezeConfig;
  /// Video detection auto freeze switch. Value: true: automatically freeze, false: not automatically freeze.
  final pulumi.Input<bool>? videoAutoFreezeOpened;
  /// Resource attribute field representing the framing frequency. 1~60 seconds/frame, the default is 1 second/frame
  final pulumi.Input<int>? videoFrameInterval;
  /// Video automatic freeze live scene configuration. Example:{"type":"suggestion","value":"block,review"}. The results will be frozen according to the suggestion in the video detection results.
  final pulumi.Input<String>? videoLiveFreezeConfig;
  /// A resource attribute field that represents the upper limit of a single video frame cut. 5 to 20000 frames, the default is 200 frames
  final pulumi.Input<int>? videoMaxFrames;
  /// Resource property field representing the maximum size of a single video. 1~2048MB, the default is 500MB, more than not detected.
  final pulumi.Input<int>? videoMaxSize;
  /// oss stock scan task detect video. true: scan video, false: do not scan video
  final pulumi.Input<bool>? videoOpened;
  /// Video automatic freezing porn scene configuration. Example: {"type": "suggestion", "value": "block,review"}. The result will be frozen according to the suggestion in the video detection result.
  final pulumi.Input<String>? videoPornFreezeConfig;
  /// The upper limit of video scanning in the oss stock scan task. The default value is 1000/Bucket.
  final pulumi.Input<int>? videoScanLimit;
  /// The video detection scenarios included in the oss stock scan task.
  /// porn: pornography detection
  /// terrorism: terrorist content detection
  /// ad: ad violation detection
  /// live: undesirable scene detection
  /// antispam: Video voice antispam
  final pulumi.Input<String>? videoScenes;
  /// The video automatically freezes the configuration of terrorism scenes. Example:{"type":"suggestion","value":"block,review"}. The results will be frozen according to the suggestion in the video detection results.
  final pulumi.Input<String>? videoTerrorismFreezeConfig;
  /// Voice auto freeze configuration in video. Example:{"type":"suggestion","value":"block,review"}. The results will be frozen according to the suggestion in the video detection results.
  final pulumi.Input<String>? videoVoiceAntispamFreezeConfig;

  /// Creates a new [OssStockTaskState].
  /// [audioAntispamFreezeConfig] Voice auto freeze configuration. Example:{"type":"suggestion","value":"block,review"}. The results are frozen according to the suggestion in the speech detection results.
  /// [audioAutoFreezeOpened] Audio detection auto freeze switch. Value: true: automatically freeze, false: not automatically freeze.
  /// [audioMaxSize] Resource property field representing the maximum size of a single audio. 1~2048MB, the default is 200MB, more than not detected.
  /// [audioOpened] oss stock scan task detect audio. true: scan audio, false: do not scan audio
  /// [audioScanLimit] The upper limit of voice scan in the oss stock scan task. The default value is 1000/Bucket.
  /// [audioScenes] The audio detection scenarios included in the oss stock scan task. Set the value to antispam.
  /// [autoFreezeType] Automatic freeze type. Value: acl: modify permissions, copy: Move files
  /// [bizType] Business scenarios used by the oss stock scan task
  /// [buckets] The bucket configuration list of the oss stock scan task. Example:[{"Bucket":"bucket_01","Selected":true,"Prefixes":["img/test_"],"Type":"exclude"}]
  /// [callbackId] The ID of the primary key of the notification message bound to the oss stock scan task.
  /// [endDate] The end time of the file upload time range indicates the scanning of files uploaded before this time point.
  /// [imageAdFreezeConfig] Picture automatically freezes the configuration of ad scenes. Example: {"type": "suggestion", "value": "block,review"}. The result will be frozen according to the suggestion in the picture detection result.
  /// [imageAutoFreezeOpened] Picture detection auto freeze switch. Value: true: auto freeze, false: not auto freeze.
  /// [imageLiveFreezeConfig] Picture automatic freezing live scene configuration. Example:{"type":"suggestion","value":"block,review"}. The result will be frozen according to the suggestion in the picture detection result.
  /// [imageOpened] oss stock scan task detect images. true: scan images, false: do not scan images
  /// [imagePornFreezeConfig] Picture automatic freezing porn scene configuration. Example: {"type": "suggestion", "value": "block,review"}. The result will be frozen according to the suggestion in the picture detection result.
  /// [imageScanLimit] The upper limit for scanning images in the oss stock scan task. The default value is 10000 images per Bucket.
  /// [imageScenes] The image moderation scenario included in the oss stock scan task.Valid values:
  /// [imageTerrorismFreezeConfig] The picture automatically freezes the configuration of terrorism scenes. Example: {"type": "suggestion", "value": "block,review"}. The result will be frozen according to the suggestion in the picture detection result.
  /// [scanImageNoFileType] Whether the oss stock scan task detects images with file names without suffixes. true: Detect pictures with file names without suffixes, false: Do not detect pictures with file names without suffixes
  /// [startDate] The start time of the file upload time range represents the files uploaded after scanning this time point.
  /// [videoAdFreezeConfig] The video automatically freezes the configuration of ad scenarios. Example:{"type":"suggestion","value":"block,review"}. The results will be frozen according to the suggestion in the video detection results.
  /// [videoAutoFreezeOpened] Video detection auto freeze switch. Value: true: automatically freeze, false: not automatically freeze.
  /// [videoFrameInterval] Resource attribute field representing the framing frequency. 1~60 seconds/frame, the default is 1 second/frame
  /// [videoLiveFreezeConfig] Video automatic freeze live scene configuration. Example:{"type":"suggestion","value":"block,review"}. The results will be frozen according to the suggestion in the video detection results.
  /// [videoMaxFrames] A resource attribute field that represents the upper limit of a single video frame cut. 5 to 20000 frames, the default is 200 frames
  /// [videoMaxSize] Resource property field representing the maximum size of a single video. 1~2048MB, the default is 500MB, more than not detected.
  /// [videoOpened] oss stock scan task detect video. true: scan video, false: do not scan video
  /// [videoPornFreezeConfig] Video automatic freezing porn scene configuration. Example: {"type": "suggestion", "value": "block,review"}. The result will be frozen according to the suggestion in the video detection result.
  /// [videoScanLimit] The upper limit of video scanning in the oss stock scan task. The default value is 1000/Bucket.
  /// [videoScenes] The video detection scenarios included in the oss stock scan task.
  /// [videoTerrorismFreezeConfig] The video automatically freezes the configuration of terrorism scenes. Example:{"type":"suggestion","value":"block,review"}. The results will be frozen according to the suggestion in the video detection results.
  /// [videoVoiceAntispamFreezeConfig] Voice auto freeze configuration in video. Example:{"type":"suggestion","value":"block,review"}. The results will be frozen according to the suggestion in the video detection results.
  OssStockTaskState({
    this.audioAntispamFreezeConfig,
    this.audioAutoFreezeOpened,
    this.audioMaxSize,
    this.audioOpened,
    this.audioScanLimit,
    this.audioScenes,
    this.autoFreezeType,
    this.bizType,
    this.buckets,
    this.callbackId,
    this.endDate,
    this.imageAdFreezeConfig,
    this.imageAutoFreezeOpened,
    this.imageLiveFreezeConfig,
    this.imageOpened,
    this.imagePornFreezeConfig,
    this.imageScanLimit,
    this.imageScenes,
    this.imageTerrorismFreezeConfig,
    this.scanImageNoFileType,
    this.startDate,
    this.videoAdFreezeConfig,
    this.videoAutoFreezeOpened,
    this.videoFrameInterval,
    this.videoLiveFreezeConfig,
    this.videoMaxFrames,
    this.videoMaxSize,
    this.videoOpened,
    this.videoPornFreezeConfig,
    this.videoScanLimit,
    this.videoScenes,
    this.videoTerrorismFreezeConfig,
    this.videoVoiceAntispamFreezeConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'audioAntispamFreezeConfig': ?audioAntispamFreezeConfig,
      'audioAutoFreezeOpened': ?audioAutoFreezeOpened,
      'audioMaxSize': ?audioMaxSize,
      'audioOpened': ?audioOpened,
      'audioScanLimit': ?audioScanLimit,
      'audioScenes': ?audioScenes,
      'autoFreezeType': ?autoFreezeType,
      'bizType': ?bizType,
      'buckets': ?buckets,
      'callbackId': ?callbackId,
      'endDate': ?endDate,
      'imageAdFreezeConfig': ?imageAdFreezeConfig,
      'imageAutoFreezeOpened': ?imageAutoFreezeOpened,
      'imageLiveFreezeConfig': ?imageLiveFreezeConfig,
      'imageOpened': ?imageOpened,
      'imagePornFreezeConfig': ?imagePornFreezeConfig,
      'imageScanLimit': ?imageScanLimit,
      'imageScenes': ?imageScenes,
      'imageTerrorismFreezeConfig': ?imageTerrorismFreezeConfig,
      'scanImageNoFileType': ?scanImageNoFileType,
      'startDate': ?startDate,
      'videoAdFreezeConfig': ?videoAdFreezeConfig,
      'videoAutoFreezeOpened': ?videoAutoFreezeOpened,
      'videoFrameInterval': ?videoFrameInterval,
      'videoLiveFreezeConfig': ?videoLiveFreezeConfig,
      'videoMaxFrames': ?videoMaxFrames,
      'videoMaxSize': ?videoMaxSize,
      'videoOpened': ?videoOpened,
      'videoPornFreezeConfig': ?videoPornFreezeConfig,
      'videoScanLimit': ?videoScanLimit,
      'videoScenes': ?videoScenes,
      'videoTerrorismFreezeConfig': ?videoTerrorismFreezeConfig,
      'videoVoiceAntispamFreezeConfig': ?videoVoiceAntispamFreezeConfig,
    };
  }

  factory OssStockTaskState.fromMap(Map<String, dynamic> map) {
    return OssStockTaskState(
      audioAntispamFreezeConfig: map['audioAntispamFreezeConfig'] == null ? null : (map['audioAntispamFreezeConfig']! as String).input(),
      audioAutoFreezeOpened: map['audioAutoFreezeOpened'] == null ? null : (map['audioAutoFreezeOpened']! as bool).input(),
      audioMaxSize: map['audioMaxSize'] == null ? null : (map['audioMaxSize']! as int).input(),
      audioOpened: map['audioOpened'] == null ? null : (map['audioOpened']! as bool).input(),
      audioScanLimit: map['audioScanLimit'] == null ? null : (map['audioScanLimit']! as int).input(),
      audioScenes: map['audioScenes'] == null ? null : (map['audioScenes']! as String).input(),
      autoFreezeType: map['autoFreezeType'] == null ? null : (map['autoFreezeType']! as String).input(),
      bizType: map['bizType'] == null ? null : (map['bizType']! as String).input(),
      buckets: map['buckets'] == null ? null : (map['buckets']! as String).input(),
      callbackId: map['callbackId'] == null ? null : (map['callbackId']! as int).input(),
      endDate: map['endDate'] == null ? null : (map['endDate']! as String).input(),
      imageAdFreezeConfig: map['imageAdFreezeConfig'] == null ? null : (map['imageAdFreezeConfig']! as String).input(),
      imageAutoFreezeOpened: map['imageAutoFreezeOpened'] == null ? null : (map['imageAutoFreezeOpened']! as bool).input(),
      imageLiveFreezeConfig: map['imageLiveFreezeConfig'] == null ? null : (map['imageLiveFreezeConfig']! as String).input(),
      imageOpened: map['imageOpened'] == null ? null : (map['imageOpened']! as bool).input(),
      imagePornFreezeConfig: map['imagePornFreezeConfig'] == null ? null : (map['imagePornFreezeConfig']! as String).input(),
      imageScanLimit: map['imageScanLimit'] == null ? null : (map['imageScanLimit']! as int).input(),
      imageScenes: map['imageScenes'] == null ? null : ((map['imageScenes']! as List).cast<String>()).input(),
      imageTerrorismFreezeConfig: map['imageTerrorismFreezeConfig'] == null ? null : (map['imageTerrorismFreezeConfig']! as String).input(),
      scanImageNoFileType: map['scanImageNoFileType'] == null ? null : (map['scanImageNoFileType']! as bool).input(),
      startDate: map['startDate'] == null ? null : (map['startDate']! as String).input(),
      videoAdFreezeConfig: map['videoAdFreezeConfig'] == null ? null : (map['videoAdFreezeConfig']! as String).input(),
      videoAutoFreezeOpened: map['videoAutoFreezeOpened'] == null ? null : (map['videoAutoFreezeOpened']! as bool).input(),
      videoFrameInterval: map['videoFrameInterval'] == null ? null : (map['videoFrameInterval']! as int).input(),
      videoLiveFreezeConfig: map['videoLiveFreezeConfig'] == null ? null : (map['videoLiveFreezeConfig']! as String).input(),
      videoMaxFrames: map['videoMaxFrames'] == null ? null : (map['videoMaxFrames']! as int).input(),
      videoMaxSize: map['videoMaxSize'] == null ? null : (map['videoMaxSize']! as int).input(),
      videoOpened: map['videoOpened'] == null ? null : (map['videoOpened']! as bool).input(),
      videoPornFreezeConfig: map['videoPornFreezeConfig'] == null ? null : (map['videoPornFreezeConfig']! as String).input(),
      videoScanLimit: map['videoScanLimit'] == null ? null : (map['videoScanLimit']! as int).input(),
      videoScenes: map['videoScenes'] == null ? null : (map['videoScenes']! as String).input(),
      videoTerrorismFreezeConfig: map['videoTerrorismFreezeConfig'] == null ? null : (map['videoTerrorismFreezeConfig']! as String).input(),
      videoVoiceAntispamFreezeConfig: map['videoVoiceAntispamFreezeConfig'] == null ? null : (map['videoVoiceAntispamFreezeConfig']! as String).input(),
    );
  }
}

