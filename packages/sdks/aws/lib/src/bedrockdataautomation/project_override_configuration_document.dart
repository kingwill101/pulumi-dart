// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_override_configuration_document_modality_processing.dart';
import 'project_override_configuration_document_sensitive_data_configuration.dart';
import 'project_override_configuration_document_splitter.dart';

class ProjectOverrideConfigurationDocument {
  /// Whether to process video files. See `modalityProcessing` Block below.
  final pulumi.Input<ProjectOverrideConfigurationDocumentModalityProcessing?>? modalityProcessing;
  /// Sensitive data detection settings. See `sensitiveDataConfiguration` Block below.
  final pulumi.Input<ProjectOverrideConfigurationDocumentSensitiveDataConfiguration?>? sensitiveDataConfiguration;
  /// Whether to split documents that contain multiple logical documents. See `splitter` Block below.
  final pulumi.Input<ProjectOverrideConfigurationDocumentSplitter?>? splitter;

  /// Creates a new [ProjectOverrideConfigurationDocument].
  /// [modalityProcessing] Whether to process video files. See `modalityProcessing` Block below.
  /// [sensitiveDataConfiguration] Sensitive data detection settings. See `sensitiveDataConfiguration` Block below.
  /// [splitter] Whether to split documents that contain multiple logical documents. See `splitter` Block below.
  const ProjectOverrideConfigurationDocument({
    this.modalityProcessing,
    this.sensitiveDataConfiguration,
    this.splitter,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'modalityProcessing': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfigurationDocumentModalityProcessing, Map<String, dynamic>>(modalityProcessing, (value) => value.toMap()),
      'sensitiveDataConfiguration': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfigurationDocumentSensitiveDataConfiguration, Map<String, dynamic>>(sensitiveDataConfiguration, (value) => value.toMap()),
      'splitter': ?pulumi.Input.mapOptionalInputValue<ProjectOverrideConfigurationDocumentSplitter, Map<String, dynamic>>(splitter, (value) => value.toMap()),
    };
  }

  factory ProjectOverrideConfigurationDocument.fromMap(Map<String, dynamic> map) {
    return ProjectOverrideConfigurationDocument(
      modalityProcessing: (() { final guardedValue = map['modalityProcessing']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfigurationDocumentModalityProcessing.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      sensitiveDataConfiguration: (() { final guardedValue = map['sensitiveDataConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfigurationDocumentSensitiveDataConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      splitter: (() { final guardedValue = map['splitter']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectOverrideConfigurationDocumentSplitter.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
