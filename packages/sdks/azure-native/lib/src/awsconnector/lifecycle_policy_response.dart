// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LifecyclePolicy
class LifecyclePolicyResponse {
  /// The JSON repository policy text to apply to the repository. The JSON repository policy text to apply to the repository.
  final pulumi.Input<String>? lifecyclePolicyText;
  /// The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed. The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
  final pulumi.Input<String>? registryId;

  /// Creates a new [LifecyclePolicyResponse].
  /// [lifecyclePolicyText] The JSON repository policy text to apply to the repository. The JSON repository policy text to apply to the repository.
  /// [registryId] The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed. The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
  const LifecyclePolicyResponse({
    this.lifecyclePolicyText,
    this.registryId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lifecyclePolicyText': ?lifecyclePolicyText,
      'registryId': ?registryId,
    };
  }

  factory LifecyclePolicyResponse.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicyResponse(
      lifecyclePolicyText: (() { final guardedValue = map['lifecyclePolicyText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
