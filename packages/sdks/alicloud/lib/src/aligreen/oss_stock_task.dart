import 'package:pulumi/pulumi.dart' as pulumi;
import 'oss_stock_task_args.dart';
import 'oss_stock_task_state.dart';

/// ## Import
///
/// Aligreen Oss Stock Task can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:aligreen/ossStockTask:OssStockTask example <id>
/// ```
class OssStockTask extends pulumi.CustomResource {
  /// Voice auto freeze configuration. Example:{"type":"suggestion","value":"block,review"}. The results are frozen according to the suggestion in the speech detection results.
  late final pulumi.Output<String?> audioAntispamFreezeConfig;
  /// Audio detection auto freeze switch. Value: true: automatically freeze, false: not automatically freeze.
  late final pulumi.Output<bool?> audioAutoFreezeOpened;
  /// Resource property field representing the maximum size of a single audio. 1~2048MB, the default is 200MB, more than not detected.
  late final pulumi.Output<int?> audioMaxSize;
  /// oss stock scan task detect audio. true: scan audio, false: do not scan audio
  late final pulumi.Output<bool?> audioOpened;
  /// The upper limit of voice scan in the oss stock scan task. The default value is 1000/Bucket.
  late final pulumi.Output<int?> audioScanLimit;
  /// The audio detection scenarios included in the oss stock scan task. Set the value to antispam.
  late final pulumi.Output<String?> audioScenes;
  /// Automatic freeze type. Value: acl: modify permissions, copy: Move files
  late final pulumi.Output<String?> autoFreezeType;
  /// Business scenarios used by the oss stock scan task
  late final pulumi.Output<String?> bizType;
  /// The bucket configuration list of the oss stock scan task. Example:[{"Bucket":"bucket_01","Selected":true,"Prefixes":["img/test_"],"Type":"exclude"}]
  late final pulumi.Output<String?> buckets;
  /// The ID of the primary key of the notification message bound to the oss stock scan task.
  late final pulumi.Output<int?> callbackId;
  /// The end time of the file upload time range indicates the scanning of files uploaded before this time point.
  late final pulumi.Output<String?> endDate;
  /// Picture automatically freezes the configuration of ad scenes. Example: {"type": "suggestion", "value": "block,review"}. The result will be frozen according to the suggestion in the picture detection result.
  late final pulumi.Output<String?> imageAdFreezeConfig;
  /// Picture detection auto freeze switch. Value: true: auto freeze, false: not auto freeze.
  late final pulumi.Output<bool?> imageAutoFreezeOpened;
  /// Picture automatic freezing live scene configuration. Example:{"type":"suggestion","value":"block,review"}. The result will be frozen according to the suggestion in the picture detection result.
  late final pulumi.Output<String?> imageLiveFreezeConfig;
  /// oss stock scan task detect images. true: scan images, false: do not scan images
  late final pulumi.Output<bool?> imageOpened;
  /// Picture automatic freezing porn scene configuration. Example: {"type": "suggestion", "value": "block,review"}. The result will be frozen according to the suggestion in the picture detection result.
  late final pulumi.Output<String?> imagePornFreezeConfig;
  /// The upper limit for scanning images in the oss stock scan task. The default value is 10000 images per Bucket.
  late final pulumi.Output<int?> imageScanLimit;
  /// The image moderation scenario included in the oss stock scan task.Valid values:
  /// porn: pornography detection
  /// terrorism: terrorist content detection
  /// ad: ad violation detection
  /// live: undesirable scene detection
  late final pulumi.Output<List<String>?> imageScenes;
  /// The picture automatically freezes the configuration of terrorism scenes. Example: {"type": "suggestion", "value": "block,review"}. The result will be frozen according to the suggestion in the picture detection result.
  late final pulumi.Output<String?> imageTerrorismFreezeConfig;
  /// Whether the oss stock scan task detects images with file names without suffixes. true: Detect pictures with file names without suffixes, false: Do not detect pictures with file names without suffixes
  late final pulumi.Output<bool?> scanImageNoFileType;
  /// The start time of the file upload time range represents the files uploaded after scanning this time point.
  late final pulumi.Output<String?> startDate;
  /// The video automatically freezes the configuration of ad scenarios. Example:{"type":"suggestion","value":"block,review"}. The results will be frozen according to the suggestion in the video detection results.
  late final pulumi.Output<String?> videoAdFreezeConfig;
  /// Video detection auto freeze switch. Value: true: automatically freeze, false: not automatically freeze.
  late final pulumi.Output<bool?> videoAutoFreezeOpened;
  /// Resource attribute field representing the framing frequency. 1~60 seconds/frame, the default is 1 second/frame
  late final pulumi.Output<int?> videoFrameInterval;
  /// Video automatic freeze live scene configuration. Example:{"type":"suggestion","value":"block,review"}. The results will be frozen according to the suggestion in the video detection results.
  late final pulumi.Output<String?> videoLiveFreezeConfig;
  /// A resource attribute field that represents the upper limit of a single video frame cut. 5 to 20000 frames, the default is 200 frames
  late final pulumi.Output<int?> videoMaxFrames;
  /// Resource property field representing the maximum size of a single video. 1~2048MB, the default is 500MB, more than not detected.
  late final pulumi.Output<int?> videoMaxSize;
  /// oss stock scan task detect video. true: scan video, false: do not scan video
  late final pulumi.Output<bool?> videoOpened;
  /// Video automatic freezing porn scene configuration. Example: {"type": "suggestion", "value": "block,review"}. The result will be frozen according to the suggestion in the video detection result.
  late final pulumi.Output<String?> videoPornFreezeConfig;
  /// The upper limit of video scanning in the oss stock scan task. The default value is 1000/Bucket.
  late final pulumi.Output<int?> videoScanLimit;
  /// The video detection scenarios included in the oss stock scan task.
  /// porn: pornography detection
  /// terrorism: terrorist content detection
  /// ad: ad violation detection
  /// live: undesirable scene detection
  /// antispam: Video voice antispam
  late final pulumi.Output<String?> videoScenes;
  /// The video automatically freezes the configuration of terrorism scenes. Example:{"type":"suggestion","value":"block,review"}. The results will be frozen according to the suggestion in the video detection results.
  late final pulumi.Output<String?> videoTerrorismFreezeConfig;
  /// Voice auto freeze configuration in video. Example:{"type":"suggestion","value":"block,review"}. The results will be frozen according to the suggestion in the video detection results.
  late final pulumi.Output<String?> videoVoiceAntispamFreezeConfig;

  /// Creates a new [OssStockTask].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [OssStockTask]. {@macro pulumi_aligreen_oss_stock_task_oss_stock_task_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  OssStockTask(
    String name, {
    OssStockTaskArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:aligreen/ossStockTask:OssStockTask',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.audioAntispamFreezeConfig = registerOutput<String?>('audioAntispamFreezeConfig');
    this.audioAutoFreezeOpened = registerOutput<bool?>('audioAutoFreezeOpened');
    this.audioMaxSize = registerOutput<int?>('audioMaxSize');
    this.audioOpened = registerOutput<bool?>('audioOpened');
    this.audioScanLimit = registerOutput<int?>('audioScanLimit');
    this.audioScenes = registerOutput<String?>('audioScenes');
    this.autoFreezeType = registerOutput<String?>('autoFreezeType');
    this.bizType = registerOutput<String?>('bizType');
    this.buckets = registerOutput<String?>('buckets');
    this.callbackId = registerOutput<int?>('callbackId');
    this.endDate = registerOutput<String?>('endDate');
    this.imageAdFreezeConfig = registerOutput<String?>('imageAdFreezeConfig');
    this.imageAutoFreezeOpened = registerOutput<bool?>('imageAutoFreezeOpened');
    this.imageLiveFreezeConfig = registerOutput<String?>('imageLiveFreezeConfig');
    this.imageOpened = registerOutput<bool?>('imageOpened');
    this.imagePornFreezeConfig = registerOutput<String?>('imagePornFreezeConfig');
    this.imageScanLimit = registerOutput<int?>('imageScanLimit');
    this.imageScenes = registerOutput<List<String>?>('imageScenes');
    this.imageTerrorismFreezeConfig = registerOutput<String?>('imageTerrorismFreezeConfig');
    this.scanImageNoFileType = registerOutput<bool?>('scanImageNoFileType');
    this.startDate = registerOutput<String?>('startDate');
    this.videoAdFreezeConfig = registerOutput<String?>('videoAdFreezeConfig');
    this.videoAutoFreezeOpened = registerOutput<bool?>('videoAutoFreezeOpened');
    this.videoFrameInterval = registerOutput<int?>('videoFrameInterval');
    this.videoLiveFreezeConfig = registerOutput<String?>('videoLiveFreezeConfig');
    this.videoMaxFrames = registerOutput<int?>('videoMaxFrames');
    this.videoMaxSize = registerOutput<int?>('videoMaxSize');
    this.videoOpened = registerOutput<bool?>('videoOpened');
    this.videoPornFreezeConfig = registerOutput<String?>('videoPornFreezeConfig');
    this.videoScanLimit = registerOutput<int?>('videoScanLimit');
    this.videoScenes = registerOutput<String?>('videoScenes');
    this.videoTerrorismFreezeConfig = registerOutput<String?>('videoTerrorismFreezeConfig');
    this.videoVoiceAntispamFreezeConfig = registerOutput<String?>('videoVoiceAntispamFreezeConfig');
  }

  /// Gets an existing [OssStockTask] resource's state with the given [name] and [id].
  static OssStockTask get(
    String name,
    pulumi.Input<String> id, {
    OssStockTaskState? state,
  }) {
    return OssStockTask._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  OssStockTask._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:aligreen/ossStockTask:OssStockTask',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.audioAntispamFreezeConfig = registerOutput<String?>('audioAntispamFreezeConfig');
    this.audioAutoFreezeOpened = registerOutput<bool?>('audioAutoFreezeOpened');
    this.audioMaxSize = registerOutput<int?>('audioMaxSize');
    this.audioOpened = registerOutput<bool?>('audioOpened');
    this.audioScanLimit = registerOutput<int?>('audioScanLimit');
    this.audioScenes = registerOutput<String?>('audioScenes');
    this.autoFreezeType = registerOutput<String?>('autoFreezeType');
    this.bizType = registerOutput<String?>('bizType');
    this.buckets = registerOutput<String?>('buckets');
    this.callbackId = registerOutput<int?>('callbackId');
    this.endDate = registerOutput<String?>('endDate');
    this.imageAdFreezeConfig = registerOutput<String?>('imageAdFreezeConfig');
    this.imageAutoFreezeOpened = registerOutput<bool?>('imageAutoFreezeOpened');
    this.imageLiveFreezeConfig = registerOutput<String?>('imageLiveFreezeConfig');
    this.imageOpened = registerOutput<bool?>('imageOpened');
    this.imagePornFreezeConfig = registerOutput<String?>('imagePornFreezeConfig');
    this.imageScanLimit = registerOutput<int?>('imageScanLimit');
    this.imageScenes = registerOutput<List<String>?>('imageScenes');
    this.imageTerrorismFreezeConfig = registerOutput<String?>('imageTerrorismFreezeConfig');
    this.scanImageNoFileType = registerOutput<bool?>('scanImageNoFileType');
    this.startDate = registerOutput<String?>('startDate');
    this.videoAdFreezeConfig = registerOutput<String?>('videoAdFreezeConfig');
    this.videoAutoFreezeOpened = registerOutput<bool?>('videoAutoFreezeOpened');
    this.videoFrameInterval = registerOutput<int?>('videoFrameInterval');
    this.videoLiveFreezeConfig = registerOutput<String?>('videoLiveFreezeConfig');
    this.videoMaxFrames = registerOutput<int?>('videoMaxFrames');
    this.videoMaxSize = registerOutput<int?>('videoMaxSize');
    this.videoOpened = registerOutput<bool?>('videoOpened');
    this.videoPornFreezeConfig = registerOutput<String?>('videoPornFreezeConfig');
    this.videoScanLimit = registerOutput<int?>('videoScanLimit');
    this.videoScenes = registerOutput<String?>('videoScenes');
    this.videoTerrorismFreezeConfig = registerOutput<String?>('videoTerrorismFreezeConfig');
    this.videoVoiceAntispamFreezeConfig = registerOutput<String?>('videoVoiceAntispamFreezeConfig');
  }
}
