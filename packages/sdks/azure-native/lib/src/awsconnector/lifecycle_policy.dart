// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Definition of LifecyclePolicy
class LifecyclePolicy {
  /// The JSON repository policy text to apply to the repository. The JSON repository policy text to apply to the repository.
  final pulumi.Input<String>? lifecyclePolicyText;
  /// The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed. The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
  final pulumi.Input<String>? registryId;
  /// The number of days after files were last accessed in primary storage (the Standard storage class) at which to move them to Archive storage. Metadata operations such as listing the contents of a directory don't count as file access events.
  final pulumi.Input<String>? transitionToArchive;
  /// The number of days after files were last accessed in primary storage (the Standard storage class) at which to move them to Infrequent Access (IA) storage. Metadata operations such as listing the contents of a directory don't count as file access events.
  final pulumi.Input<String>? transitionToIA;
  /// Whether to move files back to primary (Standard) storage after they are accessed in IA or Archive storage. Metadata operations such as listing the contents of a directory don't count as file access events.
  final pulumi.Input<String>? transitionToPrimaryStorageClass;

  /// Creates a new [LifecyclePolicy].
  /// [lifecyclePolicyText] The JSON repository policy text to apply to the repository. The JSON repository policy text to apply to the repository.
  /// [registryId] The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed. The AWS account ID associated with the registry that contains the repository. If you do not specify a registry, the default registry is assumed.
  /// [transitionToArchive] The number of days after files were last accessed in primary storage (the Standard storage class) at which to move them to Archive storage. Metadata operations such as listing the contents of a directory don't count as file access events.
  /// [transitionToIA] The number of days after files were last accessed in primary storage (the Standard storage class) at which to move them to Infrequent Access (IA) storage. Metadata operations such as listing the contents of a directory don't count as file access events.
  /// [transitionToPrimaryStorageClass] Whether to move files back to primary (Standard) storage after they are accessed in IA or Archive storage. Metadata operations such as listing the contents of a directory don't count as file access events.
  const LifecyclePolicy({
    this.lifecyclePolicyText,
    this.registryId,
    this.transitionToArchive,
    this.transitionToIA,
    this.transitionToPrimaryStorageClass,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lifecyclePolicyText': ?lifecyclePolicyText,
      'registryId': ?registryId,
      'transitionToArchive': ?transitionToArchive,
      'transitionToIA': ?transitionToIA,
      'transitionToPrimaryStorageClass': ?transitionToPrimaryStorageClass,
    };
  }

  factory LifecyclePolicy.fromMap(Map<String, dynamic> map) {
    return LifecyclePolicy(
      lifecyclePolicyText: (() { final guardedValue = map['lifecyclePolicyText']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      registryId: (() { final guardedValue = map['registryId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitionToArchive: (() { final guardedValue = map['transitionToArchive']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitionToIA: (() { final guardedValue = map['transitionToIA']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitionToPrimaryStorageClass: (() { final guardedValue = map['transitionToPrimaryStorageClass']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
