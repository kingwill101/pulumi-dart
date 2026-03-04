// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'opt_in_condition.dart';
import 'opt_in_principal.dart';
import 'opt_in_resource_data.dart';

/// Input properties used for looking up and filtering OptIn resources.
class OptInState {
  /// Lake Formation condition, which applies to permissions and opt-ins that contain an expression.
  final pulumi.Input<List<OptInCondition>>? conditions;

  /// Last modified date and time of the record.
  final pulumi.Input<String>? lastModified;
  final pulumi.Input<String>? lastUpdatedBy;

  /// Lake Formation principal. Supported principals are IAM users or IAM roles. See Principal for more details.
  final pulumi.Input<List<OptInPrincipal>>? principals;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Structure for the resource. See Resource for more details.
  final pulumi.Input<List<OptInResourceData>>? resourceDatas;

  /// Creates a new [OptInState].
  /// [conditions] Lake Formation condition, which applies to permissions and opt-ins that contain an expression.
  /// [lastModified] Last modified date and time of the record.
  /// [lastUpdatedBy] Optional.
  /// [principals] Lake Formation principal. Supported principals are IAM users or IAM roles. See Principal for more details.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [resourceDatas] Structure for the resource. See Resource for more details.
  OptInState({
    this.conditions,
    this.lastModified,
    this.lastUpdatedBy,
    this.principals,
    this.region,
    this.resourceDatas,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'conditions':
          ?pulumi.Input.mapOptionalInputValue<
            List<OptInCondition>,
            List<Map<String, dynamic>>
          >(
            conditions,
            (value) =>
                pulumi.Input.encodeList<OptInCondition, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'lastModified': ?lastModified,
      'lastUpdatedBy': ?lastUpdatedBy,
      'principals':
          ?pulumi.Input.mapOptionalInputValue<
            List<OptInPrincipal>,
            List<Map<String, dynamic>>
          >(
            principals,
            (value) =>
                pulumi.Input.encodeList<OptInPrincipal, Map<String, dynamic>>(
                  value,
                  (value) => value.toMap(),
                ),
          ),
      'region': ?region,
      'resourceDatas':
          ?pulumi.Input.mapOptionalInputValue<
            List<OptInResourceData>,
            List<Map<String, dynamic>>
          >(
            resourceDatas,
            (value) =>
                pulumi.Input.encodeList<
                  OptInResourceData,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
    };
  }

  factory OptInState.fromMap(Map<String, dynamic> map) {
    return OptInState(
      conditions: (() {
        final guardedValue = map['conditions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<OptInCondition>(
            guardedValue,
            (value) =>
                OptInCondition.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      lastModified: (() {
        final guardedValue = map['lastModified'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      lastUpdatedBy: (() {
        final guardedValue = map['lastUpdatedBy'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      principals: (() {
        final guardedValue = map['principals'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<OptInPrincipal>(
            guardedValue,
            (value) =>
                OptInPrincipal.fromMap((value as Map).cast<String, dynamic>()),
          ),
        );
      })(),
      region: (() {
        final guardedValue = map['region'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      resourceDatas: (() {
        final guardedValue = map['resourceDatas'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<OptInResourceData>(
            guardedValue,
            (value) => OptInResourceData.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
    );
  }
}
