// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_service_template_container_source_code_cloud_storage_source/get_service_template_container_source_code_cloud_storage_source.dart';

class GetServiceTemplateContainerSourceCode {
  /// Cloud Storage source.
  final List<GetServiceTemplateContainerSourceCodeCloudStorageSource>
      cloudStorageSources;

  GetServiceTemplateContainerSourceCode({
    required this.cloudStorageSources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudStorageSources'] = Input.encodeList<
        GetServiceTemplateContainerSourceCodeCloudStorageSource,
        Map<String, dynamic>>(cloudStorageSources, (value) => value.toMap());
    return map;
  }

  factory GetServiceTemplateContainerSourceCode.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateContainerSourceCode(
      cloudStorageSources: Input.decodeList<
              GetServiceTemplateContainerSourceCodeCloudStorageSource>(
          map['cloudStorageSources'],
          (value) =>
              GetServiceTemplateContainerSourceCodeCloudStorageSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
