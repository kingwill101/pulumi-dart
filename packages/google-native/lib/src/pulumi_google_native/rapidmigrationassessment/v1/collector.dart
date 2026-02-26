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
    this.bucket = Output.createUnknown<String>();
    this.clientVersion = Output.createUnknown<String>();
    this.collectionDays = Output.createUnknown<int>();
    this.collectorId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.eulaUri = Output.createUnknown<String>();
    this.expectedAssetCount = Output.createUnknown<String>();
    this.guestOsScan = Output.createUnknown<GuestOsScanResponse>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.serviceAccount = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.vsphereScan = Output.createUnknown<VSphereScanResponse>();
  }
}
