// ignore_for_file: unused_element, unnecessary_cast

import 'entity_reference.dart';

/// Data proxy properties for a managed dedicated integration runtime.
class IntegrationRuntimeDataProxyProperties {
  /// The self-hosted integration runtime reference.
  final EntityReference? connectVia;
  /// The path to contain the staged data in the Blob storage.
  final String? path;
  /// The staging linked service reference.
  final EntityReference? stagingLinkedService;

  /// Creates a new [IntegrationRuntimeDataProxyProperties].
  /// [connectVia] The self-hosted integration runtime reference.
  /// [path] The path to contain the staged data in the Blob storage.
  /// [stagingLinkedService] The staging linked service reference.
  IntegrationRuntimeDataProxyProperties({
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

  factory IntegrationRuntimeDataProxyProperties.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeDataProxyProperties(
      connectVia: map['connectVia'] == null ? null : EntityReference.fromMap((map['connectVia'] as Map).cast<String, dynamic>()),
      path: map['path'] == null ? null : map['path'] as String,
      stagingLinkedService: map['stagingLinkedService'] == null ? null : EntityReference.fromMap((map['stagingLinkedService'] as Map).cast<String, dynamic>()),
    );
  }
}

