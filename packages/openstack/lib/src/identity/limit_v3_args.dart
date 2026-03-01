// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_identity_limit_v3_limit_v3_args_doc}
/// The set of arguments for LimitV3.
/// {@endtemplate}
/// {@macro pulumi_identity_limit_v3_limit_v3_args_doc}
class LimitV3Args {
  /// Description of the limit.
  final pulumi.Input<String>? description;
  /// The domain the limit applies to. Changing this
  /// creates a new Limit.
  final pulumi.Input<String>? domainId;
  /// The project the limit applies to. Changing this
  /// creates a new Limit.
  final pulumi.Input<String>? projectId;
  /// The region in which to obtain the V3 Keystone client.
  /// If omitted, the `region` argument of the provider is used. Changing this
  /// creates a new Limit.
  final pulumi.Input<String>? region;
  /// Integer for the actual limit.
  final pulumi.Input<int> resourceLimit;
  /// The resource that the limit applies to. Changing
  /// this creates a new Limit.
  final pulumi.Input<String> resourceName;
  /// The service the limit applies to. Changing this
  /// creates a new Limit.
  final pulumi.Input<String> serviceId;

  /// Creates a new [LimitV3Args].
  /// [description] Description of the limit.
  /// [domainId] The domain the limit applies to. Changing this
  /// [projectId] The project the limit applies to. Changing this
  /// [region] The region in which to obtain the V3 Keystone client.
  /// [resourceLimit] Integer for the actual limit.
  /// [resourceName] The resource that the limit applies to. Changing
  /// [serviceId] The service the limit applies to. Changing this
  LimitV3Args({
    String? description,
    String? domainId,
    String? projectId,
    String? region,
    required int resourceLimit,
    required String resourceName,
    required String serviceId,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      domainId = pulumi.Input.asOptionalInput<String>(domainId),
      projectId = pulumi.Input.asOptionalInput<String>(projectId),
      region = pulumi.Input.asOptionalInput<String>(region),
      resourceLimit = pulumi.Input.asInput<int>(resourceLimit),
      resourceName = pulumi.Input.asInput<String>(resourceName),
      serviceId = pulumi.Input.asInput<String>(serviceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'domainId': ?domainId,
      'projectId': ?projectId,
      'region': ?region,
      'resourceLimit': resourceLimit,
      'resourceName': resourceName,
      'serviceId': serviceId,
    };
  }

  factory LimitV3Args.fromMap(Map<String, dynamic> map) {
    return LimitV3Args(
      description: map['description'] == null ? null : map['description'] as String,
      domainId: map['domainId'] == null ? null : map['domainId'] as String,
      projectId: map['projectId'] == null ? null : map['projectId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      resourceLimit: map['resourceLimit'] as int,
      resourceName: map['resourceName'] as String,
      serviceId: map['serviceId'] as String,
    );
  }
}

