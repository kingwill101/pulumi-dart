// ignore_for_file: unused_element, unnecessary_cast

import 'entity_reference_response.dart';

/// Data proxy properties for a managed dedicated integration runtime.
class IntegrationRuntimeDataProxyPropertiesResponse {
  /// The self-hosted integration runtime reference.
  final EntityReferenceResponse? connectVia;
  /// The path to contain the staged data in the Blob storage.
  final String? path;
  /// The staging linked service reference.
  final EntityReferenceResponse? stagingLinkedService;

  /// Creates a new [IntegrationRuntimeDataProxyPropertiesResponse].
  /// [connectVia] The self-hosted integration runtime reference.
  /// [path] The path to contain the staged data in the Blob storage.
  /// [stagingLinkedService] The staging linked service reference.
  IntegrationRuntimeDataProxyPropertiesResponse({
    this.connectVia,
    this.path,
    this.stagingLinkedService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectVia': ?connectVia == null ? null : connectVia!.toMap(),
      'path': ?path,
      'stagingLinkedService': ?stagingLinkedService == null ? null : stagingLinkedService!.toMap(),
    };
  }

  factory IntegrationRuntimeDataProxyPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeDataProxyPropertiesResponse(
      connectVia: map['connectVia'] == null ? null : EntityReferenceResponse.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : map['path'] as String,
      stagingLinkedService: map['stagingLinkedService'] == null ? null : EntityReferenceResponse.fromMap((map['stagingLinkedService'] as Map).cast<String, dynamic>()),
    );
  }
}

