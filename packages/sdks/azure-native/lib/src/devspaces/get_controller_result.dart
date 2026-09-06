// ignore_for_file: unused_element, unnecessary_cast

import 'sku_response.dart';

/// Result data returned by getController.
class GetControllerResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// DNS name for accessing DataPlane services
  final String? dataPlaneFqdn;
  /// DNS suffix for public endpoints running in the Azure Dev Spaces Controller.
  final String? hostSuffix;
  /// Fully qualified resource Id for the resource.
  final String? id;
  /// Region where the Azure resource is located.
  final String? location;
  /// The name of the resource.
  final String? name;
  /// Provisioning state of the Azure Dev Spaces Controller.
  final String? provisioningState;
  /// Model representing SKU for Azure Dev Spaces Controller.
  final SkuResponse? sku;
  /// Tags for the Azure resource.
  final Map<String, String>? tags;
  /// DNS of the target container host's API server
  final String? targetContainerHostApiServerFqdn;
  /// Resource ID of the target container host
  final String? targetContainerHostResourceId;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetControllerResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [dataPlaneFqdn] DNS name for accessing DataPlane services
  /// [hostSuffix] DNS suffix for public endpoints running in the Azure Dev Spaces Controller.
  /// [id] Fully qualified resource Id for the resource.
  /// [location] Region where the Azure resource is located.
  /// [name] The name of the resource.
  /// [provisioningState] Provisioning state of the Azure Dev Spaces Controller.
  /// [sku] Model representing SKU for Azure Dev Spaces Controller.
  /// [tags] Tags for the Azure resource.
  /// [targetContainerHostApiServerFqdn] DNS of the target container host's API server
  /// [targetContainerHostResourceId] Resource ID of the target container host
  /// [type] The type of the resource.
  const GetControllerResult({
    this.azureApiVersion,
    this.dataPlaneFqdn,
    this.hostSuffix,
    this.id,
    this.location,
    this.name,
    this.provisioningState,
    this.sku,
    this.tags,
    this.targetContainerHostApiServerFqdn,
    this.targetContainerHostResourceId,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'dataPlaneFqdn': ?dataPlaneFqdn,
      'hostSuffix': ?hostSuffix,
      'id': ?id,
      'location': ?location,
      'name': ?name,
      'provisioningState': ?provisioningState,
      'sku': ?sku?.toMap(),
      'tags': ?tags,
      'targetContainerHostApiServerFqdn': ?targetContainerHostApiServerFqdn,
      'targetContainerHostResourceId': ?targetContainerHostResourceId,
      'type': ?type,
    };
  }

  factory GetControllerResult.fromMap(Map<String, dynamic> map) {
    return GetControllerResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      dataPlaneFqdn: (() { final guardedValue = map['dataPlaneFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      hostSuffix: (() { final guardedValue = map['hostSuffix']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: (() { final guardedValue = map['provisioningState']; if (guardedValue == null) return null; return guardedValue as String; })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      targetContainerHostApiServerFqdn: (() { final guardedValue = map['targetContainerHostApiServerFqdn']; if (guardedValue == null) return null; return guardedValue as String; })(),
      targetContainerHostResourceId: (() { final guardedValue = map['targetContainerHostResourceId']; if (guardedValue == null) return null; return guardedValue as String; })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
