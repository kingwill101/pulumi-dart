// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_networksecurity_v1beta1_get_security_profile_group_args_doc}
/// Arguments for getSecurityProfileGroup.
/// {@endtemplate}
/// {@macro pulumi_networksecurity_v1beta1_get_security_profile_group_args_doc}
class GetSecurityProfileGroupArgs {
  final pulumi.Input<String> location;
  final pulumi.Input<String> organizationId;
  final pulumi.Input<String> securityProfileGroupId;

  /// Creates a new [GetSecurityProfileGroupArgs].
  /// [location] Required.
  /// [organizationId] Required.
  /// [securityProfileGroupId] Required.
  GetSecurityProfileGroupArgs({
    required String location,
    required String organizationId,
    required String securityProfileGroupId,
  }) :
      location = pulumi.Input.asInput<String>(location),
      organizationId = pulumi.Input.asInput<String>(organizationId),
      securityProfileGroupId = pulumi.Input.asInput<String>(securityProfileGroupId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'location': location,
      'organizationId': organizationId,
      'securityProfileGroupId': securityProfileGroupId,
    };
  }

  factory GetSecurityProfileGroupArgs.fromMap(Map<String, dynamic> map) {
    return GetSecurityProfileGroupArgs(
      location: map['location'] as String,
      organizationId: map['organizationId'] as String,
      securityProfileGroupId: map['securityProfileGroupId'] as String,
    );
  }
}

