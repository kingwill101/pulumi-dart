// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'activity_dependency_response.dart';
import 'activity_policy_response.dart';
import 'amazon_mwssource_response.dart';
import 'dataset_reference_response.dart';
import 'linked_service_reference_response.dart';
import 'user_property_response.dart';

/// Lookup activity.
class LookupActivityResponse {
  /// Lookup activity dataset reference.
  final pulumi.Input<DatasetReferenceResponse> dataset;
  /// Activity depends on condition.
  final pulumi.Input<List<ActivityDependencyResponse>>? dependsOn;
  /// Activity description.
  final pulumi.Input<String>? description;
  /// Whether to return first row or all rows. Default value is true. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? firstRowOnly;
  /// Linked service reference.
  final pulumi.Input<LinkedServiceReferenceResponse>? linkedServiceName;
  /// Activity name.
  final pulumi.Input<String> name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final pulumi.Input<String>? onInactiveMarkAs;
  /// Activity policy.
  final pulumi.Input<ActivityPolicyResponse>? policy;
  /// Dataset-specific source properties, same as copy activity source.
  final pulumi.Input<AmazonMWSSourceResponse> source;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final pulumi.Input<String>? state;
  /// Indicates whether to treat decimal values as strings to avoid value overflow issue. This option is enabled for SnowflakeV2 connector only. Type: boolean (or Expression with resultType boolean).
  final pulumi.Input<dynamic>? treatDecimalAsString;
  /// Type of activity.
  /// Expected value is 'Lookup'.
  final pulumi.Input<String> type;
  /// Activity user properties.
  final pulumi.Input<List<UserPropertyResponse>>? userProperties;

  /// Creates a new [LookupActivityResponse].
  /// [dataset] Lookup activity dataset reference.
  /// [dependsOn] Activity depends on condition.
  /// [description] Activity description.
  /// [firstRowOnly] Whether to return first row or all rows. Default value is true. Type: boolean (or Expression with resultType boolean).
  /// [linkedServiceName] Linked service reference.
  /// [name] Activity name.
  /// [onInactiveMarkAs] Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  /// [policy] Activity policy.
  /// [source] Dataset-specific source properties, same as copy activity source.
  /// [state] Activity state. This is an optional property and if not provided, the state will be Active by default.
  /// [treatDecimalAsString] Indicates whether to treat decimal values as strings to avoid value overflow issue. This option is enabled for SnowflakeV2 connector only. Type: boolean (or Expression with resultType boolean).
  /// [type] Type of activity.
  /// [userProperties] Activity user properties.
  const LookupActivityResponse({
    required this.dataset,
    this.dependsOn,
    this.description,
    this.firstRowOnly,
    this.linkedServiceName,
    required this.name,
    this.onInactiveMarkAs,
    this.policy,
    required this.source,
    this.state,
    this.treatDecimalAsString,
    required this.type,
    this.userProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dataset': pulumi.Input.mapInputValue<DatasetReferenceResponse, Map<String, dynamic>>(dataset, (value) => value.toMap()),
      'dependsOn': ?pulumi.Input.mapOptionalInputValue<List<ActivityDependencyResponse>, List<Map<String, dynamic>>>(dependsOn, (value) => pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'firstRowOnly': ?firstRowOnly,
      'linkedServiceName': ?pulumi.Input.mapOptionalInputValue<LinkedServiceReferenceResponse, Map<String, dynamic>>(linkedServiceName, (value) => value.toMap()),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?pulumi.Input.mapOptionalInputValue<ActivityPolicyResponse, Map<String, dynamic>>(policy, (value) => value.toMap()),
      'source': pulumi.Input.mapInputValue<AmazonMWSSourceResponse, Map<String, dynamic>>(source, (value) => value.toMap()),
      'state': ?state,
      'treatDecimalAsString': ?treatDecimalAsString,
      'type': type,
      'userProperties': ?pulumi.Input.mapOptionalInputValue<List<UserPropertyResponse>, List<Map<String, dynamic>>>(userProperties, (value) => pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory LookupActivityResponse.fromMap(Map<String, dynamic> map) {
    return LookupActivityResponse(
      dataset: pulumi.Input.fromValue(DatasetReferenceResponse.fromMap((map['dataset']! as Map).cast<String, dynamic>())),
      dependsOn: (() { final guardedValue = map['dependsOn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ActivityDependencyResponse>(guardedValue, (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      firstRowOnly: (() { final guardedValue = map['firstRowOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      linkedServiceName: (() { final guardedValue = map['linkedServiceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(LinkedServiceReferenceResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      onInactiveMarkAs: (() { final guardedValue = map['onInactiveMarkAs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      policy: (() { final guardedValue = map['policy']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ActivityPolicyResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      source: pulumi.Input.fromValue(AmazonMWSSourceResponse.fromMap((map['source']! as Map).cast<String, dynamic>())),
      state: (() { final guardedValue = map['state']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      treatDecimalAsString: (() { final guardedValue = map['treatDecimalAsString']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      type: pulumi.Input.fromValue(map['type'] as String),
      userProperties: (() { final guardedValue = map['userProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<UserPropertyResponse>(guardedValue, (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
