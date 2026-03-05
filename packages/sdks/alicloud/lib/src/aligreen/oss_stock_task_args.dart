// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_aligreen_oss_stock_task_oss_stock_task_args_doc}
/// The set of arguments for OssStockTask.
/// {@endtemplate}
/// {@macro pulumi_aligreen_oss_stock_task_oss_stock_task_args_doc}
class OssStockTaskArgs {
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

  /// Creates a new [OssStockTaskArgs].
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
  OssStockTaskArgs({
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

  factory OssStockTaskArgs.fromMap(Map<String, dynamic> map) {
    return OssStockTaskArgs(
      audioAntispamFreezeConfig: (() { final guardedValue = map['audioAntispamFreezeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      audioAutoFreezeOpened: (() { final guardedValue = map['audioAutoFreezeOpened']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      audioMaxSize: (() { final guardedValue = map['audioMaxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      audioOpened: (() { final guardedValue = map['audioOpened']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      audioScanLimit: (() { final guardedValue = map['audioScanLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      audioScenes: (() { final guardedValue = map['audioScenes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      autoFreezeType: (() { final guardedValue = map['autoFreezeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      bizType: (() { final guardedValue = map['bizType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      buckets: (() { final guardedValue = map['buckets']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      callbackId: (() { final guardedValue = map['callbackId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      endDate: (() { final guardedValue = map['endDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageAdFreezeConfig: (() { final guardedValue = map['imageAdFreezeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageAutoFreezeOpened: (() { final guardedValue = map['imageAutoFreezeOpened']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imageLiveFreezeConfig: (() { final guardedValue = map['imageLiveFreezeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageOpened: (() { final guardedValue = map['imageOpened']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      imagePornFreezeConfig: (() { final guardedValue = map['imagePornFreezeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      imageScanLimit: (() { final guardedValue = map['imageScanLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      imageScenes: (() { final guardedValue = map['imageScenes']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      imageTerrorismFreezeConfig: (() { final guardedValue = map['imageTerrorismFreezeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      scanImageNoFileType: (() { final guardedValue = map['scanImageNoFileType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      startDate: (() { final guardedValue = map['startDate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      videoAdFreezeConfig: (() { final guardedValue = map['videoAdFreezeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      videoAutoFreezeOpened: (() { final guardedValue = map['videoAutoFreezeOpened']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      videoFrameInterval: (() { final guardedValue = map['videoFrameInterval']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      videoLiveFreezeConfig: (() { final guardedValue = map['videoLiveFreezeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      videoMaxFrames: (() { final guardedValue = map['videoMaxFrames']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      videoMaxSize: (() { final guardedValue = map['videoMaxSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      videoOpened: (() { final guardedValue = map['videoOpened']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      videoPornFreezeConfig: (() { final guardedValue = map['videoPornFreezeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      videoScanLimit: (() { final guardedValue = map['videoScanLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      videoScenes: (() { final guardedValue = map['videoScenes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      videoTerrorismFreezeConfig: (() { final guardedValue = map['videoTerrorismFreezeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      videoVoiceAntispamFreezeConfig: (() { final guardedValue = map['videoVoiceAntispamFreezeConfig']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

