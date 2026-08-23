// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'arm_resource_definition_resource_element_template_details.dart';
import 'nfvi_details.dart';
import 'referenced_resource.dart';

/// network service design version properties.
class NetworkServiceDesignVersionPropertiesFormat {
  /// The configuration schemas to used to define the values.
  final pulumi.Input<Map<String, ReferencedResource>>? configurationGroupSchemaReferences;
  /// The network service design version description.
  final pulumi.Input<String>? description;
  /// The nfvis from the site.
  final pulumi.Input<Map<String, NfviDetails>>? nfvisFromSite;
  /// List of resource element template
  final pulumi.Input<List<ArmResourceDefinitionResourceElementTemplateDetails>>? resourceElementTemplates;

  /// Creates a new [NetworkServiceDesignVersionPropertiesFormat].
  /// [configurationGroupSchemaReferences] The configuration schemas to used to define the values.
  /// [description] The network service design version description.
  /// [nfvisFromSite] The nfvis from the site.
  /// [resourceElementTemplates] List of resource element template
  const NetworkServiceDesignVersionPropertiesFormat({
    this.configurationGroupSchemaReferences,
    this.description,
    this.nfvisFromSite,
    this.resourceElementTemplates,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationGroupSchemaReferences': ?pulumi.Input.mapOptionalInputValue<Map<String, ReferencedResource>, Map<String, Map<String, dynamic>>>(configurationGroupSchemaReferences, (value) => pulumi.Input.encodeMapValues<ReferencedResource, Map<String, dynamic>>(value, (value) => value.toMap())),
      'description': ?description,
      'nfvisFromSite': ?pulumi.Input.mapOptionalInputValue<Map<String, NfviDetails>, Map<String, Map<String, dynamic>>>(nfvisFromSite, (value) => pulumi.Input.encodeMapValues<NfviDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
      'resourceElementTemplates': ?pulumi.Input.mapOptionalInputValue<List<ArmResourceDefinitionResourceElementTemplateDetails>, List<Map<String, dynamic>>>(resourceElementTemplates, (value) => pulumi.Input.encodeList<ArmResourceDefinitionResourceElementTemplateDetails, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory NetworkServiceDesignVersionPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return NetworkServiceDesignVersionPropertiesFormat(
      configurationGroupSchemaReferences: (() { final guardedValue = map['configurationGroupSchemaReferences']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ReferencedResource>(guardedValue, (value) => ReferencedResource.fromMap((value as Map).cast<String, dynamic>()))); })(),
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfvisFromSite: (() { final guardedValue = map['nfvisFromSite']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeMapValues<NfviDetails>(guardedValue, (value) => NfviDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
      resourceElementTemplates: (() { final guardedValue = map['resourceElementTemplates']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ArmResourceDefinitionResourceElementTemplateDetails>(guardedValue, (value) => ArmResourceDefinitionResourceElementTemplateDetails.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
