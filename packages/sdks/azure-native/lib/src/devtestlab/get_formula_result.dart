// ignore_for_file: unused_element, unnecessary_cast

import 'formula_properties_from_vm_response.dart';
import 'lab_virtual_machine_creation_parameter_response.dart';
import 'system_data_response.dart';

/// Result data returned by getFormula.
class GetFormulaResult {
  /// The author of the formula.
  final String author;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The creation date of the formula.
  final String creationDate;
  /// The description of the formula.
  final String? description;
  /// The content of the formula.
  final LabVirtualMachineCreationParameterResponse? formulaContent;
  /// Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  final String id;
  /// The geo-location where the resource lives
  final String? location;
  /// The name of the resource
  final String name;
  /// The OS type of the formula.
  final String? osType;
  /// The provisioning status of the resource.
  final String provisioningState;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  final SystemDataResponse systemData;
  /// Resource tags.
  final Map<String, String>? tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  final String type;
  /// The unique immutable identifier of a resource (Guid).
  final String uniqueIdentifier;
  /// Information about a VM from which a formula is to be created.
  final FormulaPropertiesFromVmResponse? vm;

  /// Creates a new [GetFormulaResult].
  /// [author] The author of the formula.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [creationDate] The creation date of the formula.
  /// [description] The description of the formula.
  /// [formulaContent] The content of the formula.
  /// [id] Fully qualified resource ID for the resource. Ex - /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/{resourceProviderNamespace}/{resourceType}/{resourceName}
  /// [location] The geo-location where the resource lives
  /// [name] The name of the resource
  /// [osType] The OS type of the formula.
  /// [provisioningState] The provisioning status of the resource.
  /// [systemData] Azure Resource Manager metadata containing createdBy and modifiedBy information.
  /// [tags] Resource tags.
  /// [type] The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  /// [vm] Information about a VM from which a formula is to be created.
  const GetFormulaResult({
    required this.author,
    required this.azureApiVersion,
    required this.creationDate,
    this.description,
    this.formulaContent,
    required this.id,
    this.location,
    required this.name,
    this.osType,
    required this.provisioningState,
    required this.systemData,
    this.tags,
    required this.type,
    required this.uniqueIdentifier,
    this.vm,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'author': author,
      'azureApiVersion': azureApiVersion,
      'creationDate': creationDate,
      'description': ?description,
      'formulaContent': ?formulaContent?.toMap(),
      'id': id,
      'location': ?location,
      'name': name,
      'osType': ?osType,
      'provisioningState': provisioningState,
      'systemData': systemData.toMap(),
      'tags': ?tags,
      'type': type,
      'uniqueIdentifier': uniqueIdentifier,
      'vm': ?vm?.toMap(),
    };
  }

  factory GetFormulaResult.fromMap(Map<String, dynamic> map) {
    return GetFormulaResult(
      author: map['author'] as String,
      azureApiVersion: map['azureApiVersion'] as String,
      creationDate: map['creationDate'] as String,
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return guardedValue as String; })(),
      formulaContent: (() { final guardedValue = map['formulaContent']; if (guardedValue == null) return null; return LabVirtualMachineCreationParameterResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
      id: map['id'] as String,
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return guardedValue as String; })(),
      name: map['name'] as String,
      osType: (() { final guardedValue = map['osType']; if (guardedValue == null) return null; return guardedValue as String; })(),
      provisioningState: map['provisioningState'] as String,
      systemData: SystemDataResponse.fromMap((map['systemData']! as Map).cast<String, dynamic>()),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); })(),
      type: map['type'] as String,
      uniqueIdentifier: map['uniqueIdentifier'] as String,
      vm: (() { final guardedValue = map['vm']; if (guardedValue == null) return null; return FormulaPropertiesFromVmResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); })(),
    );
  }
}
