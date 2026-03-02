// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_license_details.dart';

/// Describes the properties of a License.
class LicenseDetails {
  /// Describes the edition of the license. The values are either Standard or Datacenter.
  final pulumi.Input<String>? edition;
  /// Describes the number of processors.
  final pulumi.Input<int>? processors;
  /// Describes the state of the license.
  final pulumi.Input<String>? state;
  /// Describes the license target server.
  final pulumi.Input<String>? target;
  /// Describes the license core type (pCore or vCore).
  final pulumi.Input<String>? type;
  /// A list of volume license details.
  final pulumi.Input<List<VolumeLicenseDetails>>? volumeLicenseDetails;

  /// Creates a new [LicenseDetails].
  /// [edition] Describes the edition of the license. The values are either Standard or Datacenter.
  /// [processors] Describes the number of processors.
  /// [state] Describes the state of the license.
  /// [target] Describes the license target server.
  /// [type] Describes the license core type (pCore or vCore).
  /// [volumeLicenseDetails] A list of volume license details.
  LicenseDetails({
    this.edition,
    this.processors,
    this.state,
    this.target,
    this.type,
    this.volumeLicenseDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'edition': ?edition,
      'processors': ?processors,
      'state': ?state,
      'target': ?target,
      'type': ?type,
      'volumeLicenseDetails': ?pulumi.Input.mapOptionalInputValue<List<VolumeLicenseDetails>, List<Map<String, dynamic>>>(volumeLicenseDetails, (value) => pulumi.Input.encodeList<VolumeLicenseDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LicenseDetails.fromMap(Map<String, dynamic> map) {
    return LicenseDetails(
      edition: map['edition'] == null ? null : (map['edition'] as String).input(),
      processors: map['processors'] == null ? null : (map['processors'] as int).input(),
      state: map['state'] == null ? null : (map['state'] as String).input(),
      target: map['target'] == null ? null : (map['target'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
      volumeLicenseDetails: map['volumeLicenseDetails'] == null ? null : (pulumi.Input.decodeList<VolumeLicenseDetails>(map['volumeLicenseDetails'], (value) => VolumeLicenseDetails.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

