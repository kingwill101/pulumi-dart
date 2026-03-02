// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specifies the required information to reference a compute gallery application version
class VMGalleryApplication {
  /// Optional, Specifies the uri to an azure blob that will replace the default configuration for the package if provided
  final pulumi.Input<String>? configurationReference;
  /// If set to true, when a new Gallery Application version is available in PIR/SIG, it will be automatically updated for the VM/VMSS
  final pulumi.Input<bool>? enableAutomaticUpgrade;
  /// Optional, Specifies the order in which the packages have to be installed
  final pulumi.Input<int>? order;
  /// Specifies the GalleryApplicationVersion resource id on the form of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/applications/{application}/versions/{version}
  final pulumi.Input<String> packageReferenceId;
  /// Optional, Specifies a passthrough value for more generic context.
  final pulumi.Input<String>? tags;
  /// Optional, If true, any failure for any operation in the VmApplication will fail the deployment
  final pulumi.Input<bool>? treatFailureAsDeploymentFailure;

  /// Creates a new [VMGalleryApplication].
  /// [configurationReference] Optional, Specifies the uri to an azure blob that will replace the default configuration for the package if provided
  /// [enableAutomaticUpgrade] If set to true, when a new Gallery Application version is available in PIR/SIG, it will be automatically updated for the VM/VMSS
  /// [order] Optional, Specifies the order in which the packages have to be installed
  /// [packageReferenceId] Specifies the GalleryApplicationVersion resource id on the form of /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/applications/{application}/versions/{version}
  /// [tags] Optional, Specifies a passthrough value for more generic context.
  /// [treatFailureAsDeploymentFailure] Optional, If true, any failure for any operation in the VmApplication will fail the deployment
  VMGalleryApplication({
    this.configurationReference,
    this.enableAutomaticUpgrade,
    this.order,
    required this.packageReferenceId,
    this.tags,
    this.treatFailureAsDeploymentFailure,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationReference': ?configurationReference,
      'enableAutomaticUpgrade': ?enableAutomaticUpgrade,
      'order': ?order,
      'packageReferenceId': packageReferenceId,
      'tags': ?tags,
      'treatFailureAsDeploymentFailure': ?treatFailureAsDeploymentFailure,
    };
  }

  factory VMGalleryApplication.fromMap(Map<String, dynamic> map) {
    return VMGalleryApplication(
      configurationReference: map['configurationReference'] == null ? null : (map['configurationReference']! as String).input(),
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : (map['enableAutomaticUpgrade']! as bool).input(),
      order: map['order'] == null ? null : (map['order']! as int).input(),
      packageReferenceId: (map['packageReferenceId'] as String).input(),
      tags: map['tags'] == null ? null : (map['tags']! as String).input(),
      treatFailureAsDeploymentFailure: map['treatFailureAsDeploymentFailure'] == null ? null : (map['treatFailureAsDeploymentFailure']! as bool).input(),
    );
  }
}

