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
    pulumi.Output<String>? audioAntispamFreezeConfig,
    pulumi.Output<bool>? audioAutoFreezeOpened,
    pulumi.Output<int>? audioMaxSize,
    pulumi.Output<bool>? audioOpened,
    pulumi.Output<int>? audioScanLimit,
    pulumi.Output<String>? audioScenes,
    pulumi.Output<String>? autoFreezeType,
    pulumi.Output<String>? bizType,
    pulumi.Output<String>? buckets,
    pulumi.Output<int>? callbackId,
    pulumi.Output<String>? endDate,
    pulumi.Output<String>? imageAdFreezeConfig,
    pulumi.Output<bool>? imageAutoFreezeOpened,
    pulumi.Output<String>? imageLiveFreezeConfig,
    pulumi.Output<bool>? imageOpened,
    pulumi.Output<String>? imagePornFreezeConfig,
    pulumi.Output<int>? imageScanLimit,
    pulumi.Output<List<String>>? imageScenes,
    pulumi.Output<String>? imageTerrorismFreezeConfig,
    pulumi.Output<bool>? scanImageNoFileType,
    pulumi.Output<String>? startDate,
    pulumi.Output<String>? videoAdFreezeConfig,
    pulumi.Output<bool>? videoAutoFreezeOpened,
    pulumi.Output<int>? videoFrameInterval,
    pulumi.Output<String>? videoLiveFreezeConfig,
    pulumi.Output<int>? videoMaxFrames,
    pulumi.Output<int>? videoMaxSize,
    pulumi.Output<bool>? videoOpened,
    pulumi.Output<String>? videoPornFreezeConfig,
    pulumi.Output<int>? videoScanLimit,
    pulumi.Output<String>? videoScenes,
    pulumi.Output<String>? videoTerrorismFreezeConfig,
    pulumi.Output<String>? videoVoiceAntispamFreezeConfig,
  }) :
      audioAntispamFreezeConfig = pulumi.Input.asOptionalInput<String>(audioAntispamFreezeConfig),
      audioAutoFreezeOpened = pulumi.Input.asOptionalInput<bool>(audioAutoFreezeOpened),
      audioMaxSize = pulumi.Input.asOptionalInput<int>(audioMaxSize),
      audioOpened = pulumi.Input.asOptionalInput<bool>(audioOpened),
      audioScanLimit = pulumi.Input.asOptionalInput<int>(audioScanLimit),
      audioScenes = pulumi.Input.asOptionalInput<String>(audioScenes),
      autoFreezeType = pulumi.Input.asOptionalInput<String>(autoFreezeType),
      bizType = pulumi.Input.asOptionalInput<String>(bizType),
      buckets = pulumi.Input.asOptionalInput<String>(buckets),
      callbackId = pulumi.Input.asOptionalInput<int>(callbackId),
      endDate = pulumi.Input.asOptionalInput<String>(endDate),
      imageAdFreezeConfig = pulumi.Input.asOptionalInput<String>(imageAdFreezeConfig),
      imageAutoFreezeOpened = pulumi.Input.asOptionalInput<bool>(imageAutoFreezeOpened),
      imageLiveFreezeConfig = pulumi.Input.asOptionalInput<String>(imageLiveFreezeConfig),
      imageOpened = pulumi.Input.asOptionalInput<bool>(imageOpened),
      imagePornFreezeConfig = pulumi.Input.asOptionalInput<String>(imagePornFreezeConfig),
      imageScanLimit = pulumi.Input.asOptionalInput<int>(imageScanLimit),
      imageScenes = pulumi.Input.asOptionalInput<List<String>>(imageScenes),
      imageTerrorismFreezeConfig = pulumi.Input.asOptionalInput<String>(imageTerrorismFreezeConfig),
      scanImageNoFileType = pulumi.Input.asOptionalInput<bool>(scanImageNoFileType),
      startDate = pulumi.Input.asOptionalInput<String>(startDate),
      videoAdFreezeConfig = pulumi.Input.asOptionalInput<String>(videoAdFreezeConfig),
      videoAutoFreezeOpened = pulumi.Input.asOptionalInput<bool>(videoAutoFreezeOpened),
      videoFrameInterval = pulumi.Input.asOptionalInput<int>(videoFrameInterval),
      videoLiveFreezeConfig = pulumi.Input.asOptionalInput<String>(videoLiveFreezeConfig),
      videoMaxFrames = pulumi.Input.asOptionalInput<int>(videoMaxFrames),
      videoMaxSize = pulumi.Input.asOptionalInput<int>(videoMaxSize),
      videoOpened = pulumi.Input.asOptionalInput<bool>(videoOpened),
      videoPornFreezeConfig = pulumi.Input.asOptionalInput<String>(videoPornFreezeConfig),
      videoScanLimit = pulumi.Input.asOptionalInput<int>(videoScanLimit),
      videoScenes = pulumi.Input.asOptionalInput<String>(videoScenes),
      videoTerrorismFreezeConfig = pulumi.Input.asOptionalInput<String>(videoTerrorismFreezeConfig),
      videoVoiceAntispamFreezeConfig = pulumi.Input.asOptionalInput<String>(videoVoiceAntispamFreezeConfig);

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
      audioAntispamFreezeConfig: map['audioAntispamFreezeConfig'] == null ? null : pulumi.Output.create<String>(map['audioAntispamFreezeConfig'] as String),
      audioAutoFreezeOpened: map['audioAutoFreezeOpened'] == null ? null : pulumi.Output.create<bool>(map['audioAutoFreezeOpened'] as bool),
      audioMaxSize: map['audioMaxSize'] == null ? null : pulumi.Output.create<int>(map['audioMaxSize'] as int),
      audioOpened: map['audioOpened'] == null ? null : pulumi.Output.create<bool>(map['audioOpened'] as bool),
      audioScanLimit: map['audioScanLimit'] == null ? null : pulumi.Output.create<int>(map['audioScanLimit'] as int),
      audioScenes: map['audioScenes'] == null ? null : pulumi.Output.create<String>(map['audioScenes'] as String),
      autoFreezeType: map['autoFreezeType'] == null ? null : pulumi.Output.create<String>(map['autoFreezeType'] as String),
      bizType: map['bizType'] == null ? null : pulumi.Output.create<String>(map['bizType'] as String),
      buckets: map['buckets'] == null ? null : pulumi.Output.create<String>(map['buckets'] as String),
      callbackId: map['callbackId'] == null ? null : pulumi.Output.create<int>(map['callbackId'] as int),
      endDate: map['endDate'] == null ? null : pulumi.Output.create<String>(map['endDate'] as String),
      imageAdFreezeConfig: map['imageAdFreezeConfig'] == null ? null : pulumi.Output.create<String>(map['imageAdFreezeConfig'] as String),
      imageAutoFreezeOpened: map['imageAutoFreezeOpened'] == null ? null : pulumi.Output.create<bool>(map['imageAutoFreezeOpened'] as bool),
      imageLiveFreezeConfig: map['imageLiveFreezeConfig'] == null ? null : pulumi.Output.create<String>(map['imageLiveFreezeConfig'] as String),
      imageOpened: map['imageOpened'] == null ? null : pulumi.Output.create<bool>(map['imageOpened'] as bool),
      imagePornFreezeConfig: map['imagePornFreezeConfig'] == null ? null : pulumi.Output.create<String>(map['imagePornFreezeConfig'] as String),
      imageScanLimit: map['imageScanLimit'] == null ? null : pulumi.Output.create<int>(map['imageScanLimit'] as int),
      imageScenes: map['imageScenes'] == null ? null : pulumi.Output.create<List<String>>((map['imageScenes'] as List).cast<String>()),
      imageTerrorismFreezeConfig: map['imageTerrorismFreezeConfig'] == null ? null : pulumi.Output.create<String>(map['imageTerrorismFreezeConfig'] as String),
      scanImageNoFileType: map['scanImageNoFileType'] == null ? null : pulumi.Output.create<bool>(map['scanImageNoFileType'] as bool),
      startDate: map['startDate'] == null ? null : pulumi.Output.create<String>(map['startDate'] as String),
      videoAdFreezeConfig: map['videoAdFreezeConfig'] == null ? null : pulumi.Output.create<String>(map['videoAdFreezeConfig'] as String),
      videoAutoFreezeOpened: map['videoAutoFreezeOpened'] == null ? null : pulumi.Output.create<bool>(map['videoAutoFreezeOpened'] as bool),
      videoFrameInterval: map['videoFrameInterval'] == null ? null : pulumi.Output.create<int>(map['videoFrameInterval'] as int),
      videoLiveFreezeConfig: map['videoLiveFreezeConfig'] == null ? null : pulumi.Output.create<String>(map['videoLiveFreezeConfig'] as String),
      videoMaxFrames: map['videoMaxFrames'] == null ? null : pulumi.Output.create<int>(map['videoMaxFrames'] as int),
      videoMaxSize: map['videoMaxSize'] == null ? null : pulumi.Output.create<int>(map['videoMaxSize'] as int),
      videoOpened: map['videoOpened'] == null ? null : pulumi.Output.create<bool>(map['videoOpened'] as bool),
      videoPornFreezeConfig: map['videoPornFreezeConfig'] == null ? null : pulumi.Output.create<String>(map['videoPornFreezeConfig'] as String),
      videoScanLimit: map['videoScanLimit'] == null ? null : pulumi.Output.create<int>(map['videoScanLimit'] as int),
      videoScenes: map['videoScenes'] == null ? null : pulumi.Output.create<String>(map['videoScenes'] as String),
      videoTerrorismFreezeConfig: map['videoTerrorismFreezeConfig'] == null ? null : pulumi.Output.create<String>(map['videoTerrorismFreezeConfig'] as String),
      videoVoiceAntispamFreezeConfig: map['videoVoiceAntispamFreezeConfig'] == null ? null : pulumi.Output.create<String>(map['videoVoiceAntispamFreezeConfig'] as String),
    );
  }
}

