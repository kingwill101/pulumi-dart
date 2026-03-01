// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_get_administrative_unit_get_administrative_unit_args_doc}
/// Arguments for getAdministrativeUnit.
/// {@endtemplate}
/// {@macro pulumi_index_get_administrative_unit_get_administrative_unit_args_doc}
class GetAdministrativeUnitArgs {
  /// Specifies the display name of the administrative unit.
  final pulumi.Input<String>? displayName;
  /// Specifies the object ID of the administrative unit.
  ///
  /// > One of `display_name` or `object_id` must be specified.
  final pulumi.Input<String>? objectId;

  /// Creates a new [GetAdministrativeUnitArgs].
  /// [displayName] Specifies the display name of the administrative unit.
  /// [objectId] Specifies the object ID of the administrative unit.
  GetAdministrativeUnitArgs({
    String? displayName,
    String? objectId,
  }) :
      displayName = pulumi.Input.asOptionalInput<String>(displayName),
      objectId = pulumi.Input.asOptionalInput<String>(objectId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'displayName': ?displayName,
      'objectId': ?objectId,
    };
  }

  factory GetAdministrativeUnitArgs.fromMap(Map<String, dynamic> map) {
    return GetAdministrativeUnitArgs(
      displayName: map['displayName'] == null ? null : map['displayName'] as String,
      objectId: map['objectId'] == null ? null : map['objectId'] as String,
    );
  }
}

