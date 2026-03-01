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
  final DatasetReferenceResponse dataset;
  /// Activity depends on condition.
  final List<ActivityDependencyResponse>? dependsOn;
  /// Activity description.
  final String? description;
  /// Whether to return first row or all rows. Default value is true. Type: boolean (or Expression with resultType boolean).
  final dynamic firstRowOnly;
  /// Linked service reference.
  final LinkedServiceReferenceResponse? linkedServiceName;
  /// Activity name.
  final String name;
  /// Status result of the activity when the state is set to Inactive. This is an optional property and if not provided when the activity is inactive, the status will be Succeeded by default.
  final String? onInactiveMarkAs;
  /// Activity policy.
  final ActivityPolicyResponse? policy;
  /// Dataset-specific source properties, same as copy activity source.
  final AmazonMWSSourceResponse source;
  /// Activity state. This is an optional property and if not provided, the state will be Active by default.
  final String? state;
  /// Indicates whether to treat decimal values as strings to avoid value overflow issue. This option is enabled for SnowflakeV2 connector only. Type: boolean (or Expression with resultType boolean).
  final dynamic treatDecimalAsString;
  /// Type of activity.
  /// Expected value is 'Lookup'.
  final String type;
  /// Activity user properties.
  final List<UserPropertyResponse>? userProperties;

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
  LookupActivityResponse({
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
      'dataset': dataset.toMap(),
      'dependsOn': ?dependsOn == null ? null : pulumi.Input.encodeList<ActivityDependencyResponse, Map<String, dynamic>>(dependsOn!, (value) => value.toMap()),
      'description': ?description,
      'firstRowOnly': ?firstRowOnly,
      'linkedServiceName': ?linkedServiceName == null ? null : linkedServiceName!.toMap(),
      'name': name,
      'onInactiveMarkAs': ?onInactiveMarkAs,
      'policy': ?policy == null ? null : policy!.toMap(),
      'source': source.toMap(),
      'state': ?state,
      'treatDecimalAsString': ?treatDecimalAsString,
      'type': type,
      'userProperties': ?userProperties == null ? null : pulumi.Input.encodeList<UserPropertyResponse, Map<String, dynamic>>(userProperties!, (value) => value.toMap()),
    };
  }

  factory LookupActivityResponse.fromMap(Map<String, dynamic> map) {
    return LookupActivityResponse(
      dataset: DatasetReferenceResponse.fromMap((map['dataset'] as Map).cast<String, dynamic>()),
      dependsOn: map['dependsOn'] == null ? null : pulumi.Input.decodeList<ActivityDependencyResponse>(map['dependsOn'], (value) => ActivityDependencyResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      firstRowOnly: map['firstRowOnly'] == null ? null : map['firstRowOnly'],
      linkedServiceName: map['linkedServiceName'] == null ? null : LinkedServiceReferenceResponse.fromMap((map['linkedServiceName'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      onInactiveMarkAs: map['onInactiveMarkAs'] == null ? null : map['onInactiveMarkAs'] as String,
      policy: map['policy'] == null ? null : ActivityPolicyResponse.fromMap((map['policy'] as Map).cast<String, dynamic>()),
      source: AmazonMWSSourceResponse.fromMap((map['source'] as Map).cast<String, dynamic>()),
      state: map['state'] == null ? null : map['state'] as String,
      treatDecimalAsString: map['treatDecimalAsString'] == null ? null : map['treatDecimalAsString'],
      type: map['type'] as String,
      userProperties: map['userProperties'] == null ? null : pulumi.Input.decodeList<UserPropertyResponse>(map['userProperties'], (value) => UserPropertyResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

