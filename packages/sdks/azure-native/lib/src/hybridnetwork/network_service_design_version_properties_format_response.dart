// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_resource_definition_resource_element_template_details_response.dart';
import 'nfvi_details_response.dart';
import 'referenced_resource_response.dart';

/// network service design version properties.
class NetworkServiceDesignVersionPropertiesFormatResponse {
  /// The configuration schemas to used to define the values.
  final pulumi.Input<Map<String, ReferencedResourceResponse>>?
  configurationGroupSchemaReferences;

  /// The network service design version description.
  final pulumi.Input<String>? description;

  /// The nfvis from the site.
  final pulumi.Input<Map<String, NfviDetailsResponse>>? nfvisFromSite;

  /// The provisioning state of the network service design version resource.
  final pulumi.Input<String> provisioningState;

  /// List of resource element template
  final pulumi.Input<
    List<ArmResourceDefinitionResourceElementTemplateDetailsResponse>
  >?
  resourceElementTemplates;

  /// The network service design version state.
  final pulumi.Input<String> versionState;

  /// Creates a new [NetworkServiceDesignVersionPropertiesFormatResponse].
  /// [configurationGroupSchemaReferences] The configuration schemas to used to define the values.
  /// [description] The network service design version description.
  /// [nfvisFromSite] The nfvis from the site.
  /// [provisioningState] The provisioning state of the network service design version resource.
  /// [resourceElementTemplates] List of resource element template
  /// [versionState] The network service design version state.
  NetworkServiceDesignVersionPropertiesFormatResponse({
    this.configurationGroupSchemaReferences,
    this.description,
    this.nfvisFromSite,
    required this.provisioningState,
    this.resourceElementTemplates,
    required this.versionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationGroupSchemaReferences':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, ReferencedResourceResponse>,
            Map<String, Map<String, dynamic>>
          >(
            configurationGroupSchemaReferences,
            (value) =>
                pulumi.Input.encodeMapValues<
                  ReferencedResourceResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'description': ?description,
      'nfvisFromSite':
          ?pulumi.Input.mapOptionalInputValue<
            Map<String, NfviDetailsResponse>,
            Map<String, Map<String, dynamic>>
          >(
            nfvisFromSite,
            (value) =>
                pulumi.Input.encodeMapValues<
                  NfviDetailsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'provisioningState': provisioningState,
      'resourceElementTemplates':
          ?pulumi.Input.mapOptionalInputValue<
            List<ArmResourceDefinitionResourceElementTemplateDetailsResponse>,
            List<Map<String, dynamic>>
          >(
            resourceElementTemplates,
            (value) =>
                pulumi.Input.encodeList<
                  ArmResourceDefinitionResourceElementTemplateDetailsResponse,
                  Map<String, dynamic>
                >(value, (value) => value.toMap()),
          ),
      'versionState': versionState,
    };
  }

  factory NetworkServiceDesignVersionPropertiesFormatResponse.fromMap(
    Map<String, dynamic> map,
  ) {
    return NetworkServiceDesignVersionPropertiesFormatResponse(
      configurationGroupSchemaReferences: (() {
        final guardedValue = map['configurationGroupSchemaReferences'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<ReferencedResourceResponse>(
            guardedValue,
            (value) => ReferencedResourceResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nfvisFromSite: (() {
        final guardedValue = map['nfvisFromSite'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeMapValues<NfviDetailsResponse>(
            guardedValue,
            (value) => NfviDetailsResponse.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
        );
      })(),
      provisioningState: pulumi.Input.fromValue(
        map['provisioningState'] as String,
      ),
      resourceElementTemplates: (() {
        final guardedValue = map['resourceElementTemplates'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          pulumi.Input.decodeList<
            ArmResourceDefinitionResourceElementTemplateDetailsResponse
          >(
            guardedValue,
            (value) =>
                ArmResourceDefinitionResourceElementTemplateDetailsResponse.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
        );
      })(),
      versionState: pulumi.Input.fromValue(map['versionState'] as String),
    );
  }
}
