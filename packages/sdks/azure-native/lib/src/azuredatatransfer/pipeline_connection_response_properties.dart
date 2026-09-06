// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'internal_metadata_properties_response.dart';

/// Connection properties inside pipeline
class PipelineConnectionResponseProperties {
  /// Internal metadata of the connection inside pipeline.
  final pulumi.Input<InternalMetadataPropertiesResponse?>? internalMetadata;

  /// Creates a new [PipelineConnectionResponseProperties].
  /// [internalMetadata] Internal metadata of the connection inside pipeline.
  const PipelineConnectionResponseProperties({
    this.internalMetadata,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'internalMetadata': ?pulumi.Input.mapOptionalInputValue<InternalMetadataPropertiesResponse, Map<String, dynamic>>(internalMetadata, (value) => value.toMap()),
    };
  }

  factory PipelineConnectionResponseProperties.fromMap(Map<String, dynamic> map) {
    return PipelineConnectionResponseProperties(
      internalMetadata: (() { final guardedValue = map['internalMetadata']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InternalMetadataPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
