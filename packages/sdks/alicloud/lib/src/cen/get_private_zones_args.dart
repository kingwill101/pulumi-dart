// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_private_zones_get_private_zones_args_doc}
/// Arguments for getPrivateZones.
/// {@endtemplate}
/// {@macro pulumi_cen_get_private_zones_get_private_zones_args_doc}
class GetPrivateZonesArgs {
  /// The ID of the CEN instance.
  final pulumi.Input<String> cenId;
  /// The service region. The service region is the target region of the PrivateZone service accessed through CEN.
  final pulumi.Input<String>? hostRegionId;
  /// A list of CEN private zone IDs. Each element format as `<cen_id>:<access_region_id>`.
  /// **NOTE:** Before 1.162.0, each element same as `access_region_id`.
  /// * `host_region_id ` - (Optional) The service region is the target region of the PrivateZone service accessed through CEN.
  final pulumi.Input<List<String>>? ids;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the PrivateZone service, including `Creating`, `Active` and `Deleting`.
  final pulumi.Input<String>? status;

  /// Creates a new [GetPrivateZonesArgs].
  /// [cenId] The ID of the CEN instance.
  /// [hostRegionId] The service region. The service region is the target region of the PrivateZone service accessed through CEN.
  /// [ids] A list of CEN private zone IDs. Each element format as `<cen_id>:<access_region_id>`.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the PrivateZone service, including `Creating`, `Active` and `Deleting`.
  GetPrivateZonesArgs({
    required this.cenId,
    this.hostRegionId,
    this.ids,
    this.outputFile,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cenId': cenId,
      'hostRegionId': ?hostRegionId,
      'ids': ?ids,
      'outputFile': ?outputFile,
      'status': ?status,
    };
  }

  factory GetPrivateZonesArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateZonesArgs(
      cenId: (map['cenId'] as String).input(),
      hostRegionId: map['hostRegionId'] == null ? null : (map['hostRegionId']! as String).input(),
      ids: map['ids'] == null ? null : ((map['ids']! as List).cast<String>()).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile']! as String).input(),
      status: map['status'] == null ? null : (map['status']! as String).input(),
    );
  }
}

