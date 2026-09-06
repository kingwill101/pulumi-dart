// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_license_details_response.dart';

/// Describes the properties of a License.
class LicenseDetailsResponse {
  /// Describes the number of assigned licenses.
  final pulumi.Input<int> assignedLicenses;
  /// Describes the edition of the license. The values are either Standard or Datacenter.
  final pulumi.Input<String?>? edition;
  /// Describes the immutable id.
  final pulumi.Input<String> immutableId;
  /// Describes the number of processors.
  final pulumi.Input<int?>? processors;
  /// Describes the state of the license.
  final pulumi.Input<String?>? state;
  /// Describes the license target server.
  final pulumi.Input<String?>? target;
  /// Describes the license core type (pCore or vCore).
  final pulumi.Input<String?>? type;
  /// A list of volume license details.
  final pulumi.Input<List<VolumeLicenseDetailsResponse>?>? volumeLicenseDetails;

  /// Creates a new [LicenseDetailsResponse].
  /// [assignedLicenses] Describes the number of assigned licenses.
  /// [edition] Describes the edition of the license. The values are either Standard or Datacenter.
  /// [immutableId] Describes the immutable id.
  /// [processors] Describes the number of processors.
  /// [state] Describes the state of the license.
  /// [target] Describes the license target server.
  /// [type] Describes the license core type (pCore or vCore).
  /// [volumeLicenseDetails] A list of volume license details.
  const LicenseDetailsResponse({
    required this.assignedLicenses,
    this.edition,
    required this.immutableId,
    this.processors,
    this.state,
    this.target,
    this.type,
    this.volumeLicenseDetails,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'assignedLicenses': assignedLicenses,
      'edition': ?edition,
      'immutableId': immutableId,
      'processors': ?processors,
      'state': ?state,
      'target': ?target,
      'type': ?type,
      'volumeLicenseDetails': ?pulumi.Input.mapOptionalInputValue<List<VolumeLicenseDetailsResponse>, List<Map<String, dynamic>>>(volumeLicenseDetails, (value) => pulumi.Input.encodeList<VolumeLicenseDetailsResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LicenseDetailsResponse.fromMap(Map<String, dynamic> map) {
    return LicenseDetailsResponse(
      assignedLicenses: pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(map['assignedLicenses'])),
      edition: (() { final guardedValue = map['edition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      immutableId: pulumi.Input.fromValue(map['immutableId'] as String),
      processors: (() { final guardedValue = map['processors']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      target: (() { final guardedValue = map['target']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeLicenseDetails: (() { final guardedValue = map['volumeLicenseDetails']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<VolumeLicenseDetailsResponse>(guardedValue, (value) => VolumeLicenseDetailsResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
