// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'product_response.dart';
import 'system_data_response.dart';

/// Result data returned by getUserSolution.
class GetUserSolutionResult {
  /// The Azure API version of the resource.
  final String? azureApiVersion;
  final String? displayName;
  /// The resource ID.
  final String? id;
  /// The name of the resource.
  final String? name;
  final List<ProductResponse>? products;
  /// Metadata pertaining to creation and last modification of the resource
  final SystemDataResponse? systemData;
  /// The type of the resource.
  final String? type;

  /// Creates a new [GetUserSolutionResult].
  /// [azureApiVersion] The Azure API version of the resource.
  /// [displayName] Optional.
  /// [id] The resource ID.
  /// [name] The name of the resource.
  /// [products] Optional.
  /// [systemData] Metadata pertaining to creation and last modification of the resource
  /// [type] The type of the resource.
  const GetUserSolutionResult({
    this.azureApiVersion,
    this.displayName,
    this.id,
    this.name,
    this.products,
    this.systemData,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'azureApiVersion': ?azureApiVersion,
      'displayName': ?displayName,
      'id': ?id,
      'name': ?name,
      'products': ?(() { final guardedValue = products; if (guardedValue == null) return null; return pulumi.Input.encodeList<ProductResponse, Map<String, dynamic>>(guardedValue, (value) => value.toMap()); })(),
      'systemData': ?systemData?.toMap(),
      'type': ?type,
    };
  }

  factory GetUserSolutionResult.fromMap(Map<String, dynamic> map) {
    return GetUserSolutionResult(
      azureApiVersion: (() { final guardedValue = map['azureApiVersion']; if (guardedValue == null) return null; return guardedValue as String; })(),
      displayName: (() { final guardedValue = map['displayName']; if (guardedValue == null) return null; return guardedValue as String; })(),
      id: (() { final guardedValue = map['id']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return guardedValue as String; })(),
      products: (() { final guardedValue = map['products']; if (guardedValue == null) return null; return pulumi.Input.decodeList<ProductResponse>(guardedValue, (value) => ProductResponse.fromMap((value as Map).cast<String, dynamic>())); })(),
      systemData: (() { final guardedValue = map['systemData']; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return guardedValue as String; })(),
    );
  }
}
