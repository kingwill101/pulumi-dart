// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'entity_reference.dart';

/// Data proxy properties for a managed dedicated integration runtime.
class IntegrationRuntimeDataProxyProperties {
  /// The self-hosted integration runtime reference.
  final pulumi.Input<EntityReference>? connectVia;
  /// The path to contain the staged data in the Blob storage.
  final pulumi.Input<String>? path;
  /// The staging linked service reference.
  final pulumi.Input<EntityReference>? stagingLinkedService;

  /// Creates a new [IntegrationRuntimeDataProxyProperties].
  /// [connectVia] The self-hosted integration runtime reference.
  /// [path] The path to contain the staged data in the Blob storage.
  /// [stagingLinkedService] The staging linked service reference.
  const IntegrationRuntimeDataProxyProperties({
    this.connectVia,
    this.path,
    this.stagingLinkedService,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectVia': ?pulumi.Input.mapOptionalInputValue<EntityReference, Map<String, dynamic>>(connectVia, (value) => value.toMap()),
      'path': ?path,
      'stagingLinkedService': ?pulumi.Input.mapOptionalInputValue<EntityReference, Map<String, dynamic>>(stagingLinkedService, (value) => value.toMap()),
    };
  }

  factory IntegrationRuntimeDataProxyProperties.fromMap(Map<String, dynamic> map) {
    return IntegrationRuntimeDataProxyProperties(
      connectVia: (() { final guardedValue = map['connectVia']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      stagingLinkedService: (() { final guardedValue = map['stagingLinkedService']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EntityReference.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

