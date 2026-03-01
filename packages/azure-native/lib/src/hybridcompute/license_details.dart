// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_license_details.dart';

/// Describes the properties of a License.
class LicenseDetails {
  /// Describes the edition of the license. The values are either Standard or Datacenter.
  final String? edition;
  /// Describes the number of processors.
  final int? processors;
  /// Describes the state of the license.
  final String? state;
  /// Describes the license target server.
  final String? target;
  /// Describes the license core type (pCore or vCore).
  final String? type;
  /// A list of volume license details.
  final List<VolumeLicenseDetails>? volumeLicenseDetails;

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
      'volumeLicenseDetails': ?volumeLicenseDetails == null ? null : pulumi.Input.encodeList<VolumeLicenseDetails, Map<String, dynamic>>(volumeLicenseDetails!, (value) => value.toMap()),
    };
  }

  factory LicenseDetails.fromMap(Map<String, dynamic> map) {
    return LicenseDetails(
      edition: map['edition'] == null ? null : map['edition'] as String,
      processors: map['processors'] == null ? null : map['processors'] as int,
      state: map['state'] == null ? null : map['state'] as String,
      target: map['target'] == null ? null : map['target'] as String,
      type: map['type'] == null ? null : map['type'] as String,
      volumeLicenseDetails: map['volumeLicenseDetails'] == null ? null : pulumi.Input.decodeList<VolumeLicenseDetails>(map['volumeLicenseDetails'], (value) => VolumeLicenseDetails.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

