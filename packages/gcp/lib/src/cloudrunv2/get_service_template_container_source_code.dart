// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_service_template_container_source_code_cloud_storage_source.dart';

class GetServiceTemplateContainerSourceCode {
  /// Cloud Storage source.
  final List<GetServiceTemplateContainerSourceCodeCloudStorageSource>
      cloudStorageSources;

  /// Creates a new [GetServiceTemplateContainerSourceCode].
  /// [cloudStorageSources] Cloud Storage source.
  GetServiceTemplateContainerSourceCode({
    required this.cloudStorageSources,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudStorageSources'] = pulumi.Input.encodeList<
        GetServiceTemplateContainerSourceCodeCloudStorageSource,
        Map<String, dynamic>>(cloudStorageSources, (value) => value.toMap());
    return map;
  }

  factory GetServiceTemplateContainerSourceCode.fromMap(
      Map<String, dynamic> map) {
    return GetServiceTemplateContainerSourceCode(
      cloudStorageSources: pulumi.Input.decodeList<
              GetServiceTemplateContainerSourceCodeCloudStorageSource>(
          map['cloudStorageSources'],
          (value) =>
              GetServiceTemplateContainerSourceCodeCloudStorageSource.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
