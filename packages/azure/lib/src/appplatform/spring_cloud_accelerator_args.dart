// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_appplatform_spring_cloud_accelerator_spring_cloud_accelerator_args_doc}
/// The set of arguments for SpringCloudAccelerator.
/// {@endtemplate}
/// {@macro pulumi_appplatform_spring_cloud_accelerator_spring_cloud_accelerator_args_doc}
class SpringCloudAcceleratorArgs {
  /// The name which should be used for this Spring Cloud Accelerator. Changing this forces a new Spring Cloud Accelerator to be created. The only possible value is `default`.
  final pulumi.Input<String>? name;
  /// The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Accelerator to be created.
  final pulumi.Input<String> springCloudServiceId;

  /// Creates a new [SpringCloudAcceleratorArgs].
  /// [name] The name which should be used for this Spring Cloud Accelerator. Changing this forces a new Spring Cloud Accelerator to be created. The only possible value is `default`.
  /// [springCloudServiceId] The ID of the Spring Cloud Service. Changing this forces a new Spring Cloud Accelerator to be created.
  SpringCloudAcceleratorArgs({
    String? name,
    required String springCloudServiceId,
  }) :
      name = pulumi.Input.asOptionalInput<String>(name),
      springCloudServiceId = pulumi.Input.asInput<String>(springCloudServiceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'springCloudServiceId': springCloudServiceId,
    };
  }

  factory SpringCloudAcceleratorArgs.fromMap(Map<String, dynamic> map) {
    return SpringCloudAcceleratorArgs(
      name: map['name'] == null ? null : map['name'] as String,
      springCloudServiceId: map['springCloudServiceId'] as String,
    );
  }
}

