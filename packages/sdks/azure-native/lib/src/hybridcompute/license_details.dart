// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_license_details.dart';

/// Describes the properties of a License.
class LicenseDetails {
  /// Describes the edition of the license. The values are either Standard or Datacenter.
  final pulumi.Input<dynamic>? edition;
  /// Describes the number of processors.
  final pulumi.Input<int?>? processors;
  /// Describes the state of the license.
  final pulumi.Input<dynamic>? state;
  /// Describes the license target server.
  final pulumi.Input<dynamic>? target;
  /// Describes the license core type (pCore or vCore).
  final pulumi.Input<dynamic>? type;
  /// A list of volume license details.
  final pulumi.Input<List<VolumeLicenseDetails>?>? volumeLicenseDetails;

  /// Creates a new [LicenseDetails].
  /// [edition] Describes the edition of the license. The values are either Standard or Datacenter.
  /// [processors] Describes the number of processors.
  /// [state] Describes the state of the license.
  /// [target] Describes the license target server.
  /// [type] Describes the license core type (pCore or vCore).
  /// [volumeLicenseDetails] A list of volume license details.
  const LicenseDetails({
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
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      processors: (() { final guardedValue = map['processors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      volumeLicenseDetails: (() { final guardedValue = map['volumeLicenseDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeLicenseDetails>(guardedValue, (value) => VolumeLicenseDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
