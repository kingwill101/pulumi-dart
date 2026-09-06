// ignore_for_file: unused_element, unnecessary_cast

import 'customized_accelerator_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Result data returned by getCustomizedAccelerator.
class GetCustomizedAcceleratorResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  /// Fully qualified resource Id for the resource.
  final String? id;
  /// The name of the resource.
  final String? name;
  /// Customized accelerator properties payload
  final CustomizedAcceleratorPropertiesResponse? properties;
  /// Sku of the customized accelerator resource
  final SkuResponse? sku;
  /// Metadata pertaining to creation and last modification of the resource.
  final SystemDataResponse? systemData;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetCustomizedAcceleratorResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [id] Fully qualified resource Id for the resource.
  /// [name] The name of the resource.
  /// [properties] Customized accelerator properties payload
  /// [sku] Sku of the customized accelerator resource
  /// [systemData] Metadata pertaining to creation and last modification of the resource.
  /// [type] The type of the resource.
  const GetCustomizedAcceleratorResult({
    this.azureApiVersion,
    this.id,
    this.name,
    this.properties,
    this.sku,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'id': ?id,
      'name': ?name,
      'properties': ?properties?.toMap(),
      'sku': ?sku?.toMap(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetCustomizedAcceleratorResult.fromMap(Map<String, dynamic> map) {
    return GetCustomizedAcceleratorResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      properties: (() { final guardedValue = map['properties']; if (guardedValue == null) return null; return CustomizedAcceleratorPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      sku: (() { final guardedValue = map['sku']; if (guardedValue == null) return null; return SkuResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
