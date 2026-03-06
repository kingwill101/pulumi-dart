// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_kubernetesruntime_get_storage_class_args_doc}
/// Arguments for getStorageClass.
/// {@endtemplate}
/// {@macro pulumi_kubernetesruntime_get_storage_class_args_doc}
class GetStorageClassArgs {
  /// The fully qualified Azure Resource manager identifier of the resource.
  final pulumi.Input<String> resourceUri;
  /// The name of the the storage class
  final pulumi.Input<String> storageClassName;

  /// Creates a new [GetStorageClassArgs].
  /// [resourceUri] The fully qualified Azure Resource manager identifier of the resource.
  /// [storageClassName] The name of the the storage class
  const GetStorageClassArgs({
    required this.resourceUri,
    required this.storageClassName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceUri': resourceUri,
      'storageClassName': storageClassName,
    };
  }

  factory GetStorageClassArgs.fromMap(Map<String, dynamic> map) {
    return GetStorageClassArgs(
      resourceUri: pulumi.Input.fromValue(map['resourceUri'] as String),
      storageClassName: pulumi.Input.fromValue(map['storageClassName'] as String),
    );
  }
}

