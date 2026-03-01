// ignore_for_file: unused_element, unnecessary_cast


/// Specifies the required information to reference a compute gallery application
/// version
class VMGalleryApplication {
  /// Optional, Specifies the uri to an azure blob that will replace the default
  /// configuration for the package if provided
  final String? configurationReference;
  /// If set to true, when a new Gallery Application version is available in PIR/SIG,
  /// it will be automatically updated for the VM/VMSS
  final bool? enableAutomaticUpgrade;
  /// Optional, Specifies the order in which the packages have to be installed
  final int? order;
  /// Specifies the GalleryApplicationVersion resource id on the form of
  /// /subscriptions/{SubscriptionId}/resourceGroups/{ResourceGroupName}/providers/Microsoft.Compute/galleries/{galleryName}/applications/{application}/versions/{version}
  final String packageReferenceId;
  /// Optional, Specifies a passthrough value for more generic context.
  final String? tags;
  /// Optional, If true, any failure for any operation in the VmApplication will fail
  /// the deployment
  final bool? treatFailureAsDeploymentFailure;

  /// Creates a new [VMGalleryApplication].
  /// [configurationReference] Optional, Specifies the uri to an azure blob that will replace the default
  /// [enableAutomaticUpgrade] If set to true, when a new Gallery Application version is available in PIR/SIG,
  /// [order] Optional, Specifies the order in which the packages have to be installed
  /// [packageReferenceId] Specifies the GalleryApplicationVersion resource id on the form of
  /// [tags] Optional, Specifies a passthrough value for more generic context.
  /// [treatFailureAsDeploymentFailure] Optional, If true, any failure for any operation in the VmApplication will fail
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
      configurationReference: map['configurationReference'] == null ? null : map['configurationReference'] as String,
      enableAutomaticUpgrade: map['enableAutomaticUpgrade'] == null ? null : map['enableAutomaticUpgrade'] as bool,
      order: map['order'] == null ? null : map['order'] as int,
      packageReferenceId: map['packageReferenceId'] as String,
      tags: map['tags'] == null ? null : map['tags'] as String,
      treatFailureAsDeploymentFailure: map['treatFailureAsDeploymentFailure'] == null ? null : map['treatFailureAsDeploymentFailure'] as bool,
    );
  }
}

