// ignore_for_file: unused_element, unnecessary_cast

import 'formula_properties_from_vm_response.dart';
import 'lab_virtual_machine_creation_parameter_response.dart';

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

  /// The identifier of the resource.
  final String id;

  /// The location of the resource.
  final String? location;

  /// The name of the resource.
  final String name;

  /// The OS type of the formula.
  final String? osType;

  /// The provisioning status of the resource.
  final String provisioningState;

  /// The tags of the resource.
  final Map<String, String>? tags;

  /// The type of the resource.
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
  /// [id] The identifier of the resource.
  /// [location] The location of the resource.
  /// [name] The name of the resource.
  /// [osType] The OS type of the formula.
  /// [provisioningState] The provisioning status of the resource.
  /// [tags] The tags of the resource.
  /// [type] The type of the resource.
  /// [uniqueIdentifier] The unique immutable identifier of a resource (Guid).
  /// [vm] Information about a VM from which a formula is to be created.
  GetFormulaResult({
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
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      formulaContent: (() {
        final guardedValue = map['formulaContent'];
        if (guardedValue == null) return null;
        return LabVirtualMachineCreationParameterResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
      id: map['id'] as String,
      location: (() {
        final guardedValue = map['location'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      name: map['name'] as String,
      osType: (() {
        final guardedValue = map['osType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      provisioningState: map['provisioningState'] as String,
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      type: map['type'] as String,
      uniqueIdentifier: map['uniqueIdentifier'] as String,
      vm: (() {
        final guardedValue = map['vm'];
        if (guardedValue == null) return null;
        return FormulaPropertiesFromVmResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      })(),
    );
  }
}
