import 'package:pulumi/pulumi.dart';
import 'collector_args.dart';
import 'guest_os_scan_response.dart';
import 'vsphere_scan_response.dart';

/// Create a Collector to manage the on-prem appliance which collects information about Customer assets.
class Collector extends CustomResource {
  /// Store cloud storage bucket name (which is a guid) created with this Collector.
  late final Output<String> bucket;

  /// Client version.
  late final Output<String> clientVersion;

  /// How many days to collect data.
  late final Output<int> collectionDays;

  /// Required. Id of the requesting object.
  late final Output<String> collectorId;

  /// Create time stamp.
  late final Output<String> createTime;

  /// User specified description of the Collector.
  late final Output<String> description;

  /// User specified name of the Collector.
  late final Output<String> displayName;

  /// Uri for EULA (End User License Agreement) from customer.
  late final Output<String> eulaUri;

  /// User specified expected asset count.
  late final Output<String> expectedAssetCount;

  /// Reference to MC Source Guest Os Scan.
  late final Output<GuestOsScanResponse> guestOsScan;

  /// Labels as key value pairs.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// name of resource.
  late final Output<String> name;
  late final Output<String> project;

  /// Optional. An optional request ID to identify requests.
  late final Output<String?> requestId;

  /// Service Account email used to ingest data to this Collector.
  late final Output<String> serviceAccount;

  /// State of the Collector.
  late final Output<String> state;

  /// Update time stamp.
  late final Output<String> updateTime;

  /// Reference to MC Source vsphere_scan.
  late final Output<VSphereScanResponse> vsphereScan;

  Collector(
    String name, {
    CollectorArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:rapidmigrationassessment/v1:Collector',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bucket = registerOutput<String>('bucket');
    this.clientVersion = registerOutput<String>('clientVersion');
    this.collectionDays = registerOutput<int>('collectionDays');
    this.collectorId = registerOutput<String>('collectorId');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String>('description');
    this.displayName = registerOutput<String>('displayName');
    this.eulaUri = registerOutput<String>('eulaUri');
    this.expectedAssetCount = registerOutput<String>('expectedAssetCount');
    this.guestOsScan = registerOutput<GuestOsScanResponse>('guestOsScan');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.serviceAccount = registerOutput<String>('serviceAccount');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.vsphereScan = registerOutput<VSphereScanResponse>('vsphereScan');
  }
}
