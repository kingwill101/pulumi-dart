// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_resource_definition_resource_element_template_details.dart';
import 'nfvi_details.dart';
import 'referenced_resource.dart';

/// network service design version properties.
class NetworkServiceDesignVersionPropertiesFormat {
  /// The configuration schemas to used to define the values.
  final Map<String, ReferencedResource>? configurationGroupSchemaReferences;
  /// The network service design version description.
  final String? description;
  /// The nfvis from the site.
  final Map<String, NfviDetails>? nfvisFromSite;
  /// List of resource element template
  final List<ArmResourceDefinitionResourceElementTemplateDetails>? resourceElementTemplates;

  /// Creates a new [NetworkServiceDesignVersionPropertiesFormat].
  /// [configurationGroupSchemaReferences] The configuration schemas to used to define the values.
  /// [description] The network service design version description.
  /// [nfvisFromSite] The nfvis from the site.
  /// [resourceElementTemplates] List of resource element template
  NetworkServiceDesignVersionPropertiesFormat({
    this.configurationGroupSchemaReferences,
    this.description,
    this.nfvisFromSite,
    this.resourceElementTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationGroupSchemaReferences': ?configurationGroupSchemaReferences == null ? null : pulumi.Input.encodeMapValues<ReferencedResource, Map<String, dynamic>>(configurationGroupSchemaReferences!, (value) => value.toMap()),
      'description': ?description,
      'nfvisFromSite': ?nfvisFromSite == null ? null : pulumi.Input.encodeMapValues<NfviDetails, Map<String, dynamic>>(nfvisFromSite!, (value) => value.toMap()),
      'resourceElementTemplates': ?resourceElementTemplates == null ? null : pulumi.Input.encodeList<ArmResourceDefinitionResourceElementTemplateDetails, Map<String, dynamic>>(resourceElementTemplates!, (value) => value.toMap()),
    };
  }

  factory NetworkServiceDesignVersionPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return NetworkServiceDesignVersionPropertiesFormat(
      configurationGroupSchemaReferences: map['configurationGroupSchemaReferences'] == null ? null : pulumi.Input.decodeMapValues<ReferencedResource>(map['configurationGroupSchemaReferences'], (value) => ReferencedResource.fromMap((value as Map).cast<String, dynamic>())),
      description: map['description'] == null ? null : map['description'] as String,
      nfvisFromSite: map['nfvisFromSite'] == null ? null : pulumi.Input.decodeMapValues<NfviDetails>(map['nfvisFromSite'], (value) => NfviDetails.fromMap((value as Map).cast<String, dynamic>())),
      resourceElementTemplates: map['resourceElementTemplates'] == null ? null : pulumi.Input.decodeList<ArmResourceDefinitionResourceElementTemplateDetails>(map['resourceElementTemplates'], (value) => ArmResourceDefinitionResourceElementTemplateDetails.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

