// ignore_for_file: unused_element, unnecessary_cast

/// The euc configuration of NotebookRuntimeTemplate.
class GoogleCloudAiplatformV1beta1NotebookEucConfigResponse {
  /// Whether ActAs check is bypassed for service account attached to the VM. If false, we need ActAs check for the default Compute Engine Service account. When a Runtime is created, a VM is allocated using Default Compute Engine Service Account. Any user requesting to use this Runtime requires Service Account User (ActAs) permission over this SA. If true, Runtime owner is using EUC and does not require the above permission as VM no longer use default Compute Engine SA, but a P4SA.
  final bool bypassActasCheck;

  /// Input only. Whether EUC is disabled in this NotebookRuntimeTemplate. In proto3, the default value of a boolean is false. In this way, by default EUC will be enabled for NotebookRuntimeTemplate.
  final bool eucDisabled;

  /// Creates a new [GoogleCloudAiplatformV1beta1NotebookEucConfigResponse].
  /// [bypassActasCheck] Whether ActAs check is bypassed for service account attached to the VM. If false, we need ActAs check for the default Compute Engine Service account. When a Runtime is created, a VM is allocated using Default Compute Engine Service Account. Any user requesting to use this Runtime requires Service Account User (ActAs) permission over this SA. If true, Runtime owner is using EUC and does not require the above permission as VM no longer use default Compute Engine SA, but a P4SA.
  /// [eucDisabled] Input only. Whether EUC is disabled in this NotebookRuntimeTemplate. In proto3, the default value of a boolean is false. In this way, by default EUC will be enabled for NotebookRuntimeTemplate.
  GoogleCloudAiplatformV1beta1NotebookEucConfigResponse({
    required this.bypassActasCheck,
    required this.eucDisabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bypassActasCheck'] = bypassActasCheck;
    map['eucDisabled'] = eucDisabled;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1NotebookEucConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1NotebookEucConfigResponse(
      bypassActasCheck: map['bypassActasCheck'] as bool,
      eucDisabled: map['eucDisabled'] as bool,
    );
  }
}
