// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_resource_definition_resource_element_template_details_response.dart';
import 'nfvi_details_response.dart';
import 'referenced_resource_response.dart';

/// network service design version properties.
class NetworkServiceDesignVersionPropertiesFormatResponse {
  /// The configuration schemas to used to define the values.
  final Map<String, ReferencedResourceResponse>? configurationGroupSchemaReferences;
  /// The network service design version description.
  final String? description;
  /// The nfvis from the site.
  final Map<String, NfviDetailsResponse>? nfvisFromSite;
  /// The provisioning state of the network service design version resource.
  final String provisioningState;
  /// List of resource element template
  final List<ArmResourceDefinitionResourceElementTemplateDetailsResponse>? resourceElementTemplates;
  /// The network service design version state.
  final String versionState;

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
      'configurationGroupSchemaReferences': ?configurationGroupSchemaReferences == null ? null : pulumi.Input.encodeMapValues<ReferencedResourceResponse, Map<String, dynamic>>(configurationGroupSchemaReferences!, (value) => value.toMap()),
      'description': ?description,
      'nfvisFromSite': ?nfvisFromSite == null ? null : pulumi.Input.encodeMapValues<NfviDetailsResponse, Map<String, dynamic>>(nfvisFromSite!, (value) => value.toMap()),
      'provisioningState': provisioningState,
      'resourceElementTemplates': ?resourceElementTemplates == null ? null : pulumi.Input.encodeList<ArmResourceDefinitionResourceElementTemplateDetailsResponse, Map<String, dynamic>>(resourceElementTemplates!, (value) => value.toMap()),
      'versionState': versionState,
    };
  }

  factory NetworkServiceDesignVersionPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return NetworkServiceDesignVersionPropertiesFormatResponse(
      configurationGroupSchemaReferences: map['configurationGroupSchemaReferences'] == null ? null : pulumi.Input.decodeMapValues<ReferencedResourceResponse>(map['configurationGroupSchemaReferences'], (value) => ReferencedResourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      nfvisFromSite: map['nfvisFromSite'] == null ? null : pulumi.Input.decodeMapValues<NfviDetailsResponse>(map['nfvisFromSite'], (value) => NfviDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      provisioningState: map['provisioningState'] as String,
      resourceElementTemplates: map['resourceElementTemplates'] == null ? null : pulumi.Input.decodeList<ArmResourceDefinitionResourceElementTemplateDetailsResponse>(map['resourceElementTemplates'], (value) => ArmResourceDefinitionResourceElementTemplateDetailsResponse.fromMap((value as Map).cast<String, dynamic>())),
      versionState: map['versionState'] as String,
    );
  }
}

