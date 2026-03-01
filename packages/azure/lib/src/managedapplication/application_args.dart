// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_plan.dart';

/// {@template pulumi_managedapplication_application_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_managedapplication_application_application_args_doc}
class ApplicationArgs {
  /// The application definition ID to deploy.
  final pulumi.Input<String>? applicationDefinitionId;
  /// The kind of the managed application to deploy. Possible values are `MarketPlace` and `ServiceCatalog`. Changing this forces a new resource to be created.
  final pulumi.Input<String> kind;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  final pulumi.Input<String>? location;
  /// The name of the target resource group where all the resources deployed by the managed application will reside. Changing this forces a new resource to be created.
  final pulumi.Input<String> managedResourceGroupName;
  /// Specifies the name of the Managed Application. Changing this forces a new resource to be created.
  final pulumi.Input<String>? name;
  /// The parameter values to pass to the Managed Application. This field is a JSON object that allows you to assign parameters to this Managed Application.
  final pulumi.Input<String>? parameterValues;
  /// One `plan` block as defined below. Changing this forces a new resource to be created.
  final pulumi.Input<ApplicationPlan>? plan;
  /// The name of the Resource Group where the Managed Application should exist. Changing this forces a new resource to be created.
  final pulumi.Input<String> resourceGroupName;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationArgs].
  /// [applicationDefinitionId] The application definition ID to deploy.
  /// [kind] The kind of the managed application to deploy. Possible values are `MarketPlace` and `ServiceCatalog`. Changing this forces a new resource to be created.
  /// [location] Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  /// [managedResourceGroupName] The name of the target resource group where all the resources deployed by the managed application will reside. Changing this forces a new resource to be created.
  /// [name] Specifies the name of the Managed Application. Changing this forces a new resource to be created.
  /// [parameterValues] The parameter values to pass to the Managed Application. This field is a JSON object that allows you to assign parameters to this Managed Application.
  /// [plan] One `plan` block as defined below. Changing this forces a new resource to be created.
  /// [resourceGroupName] The name of the Resource Group where the Managed Application should exist. Changing this forces a new resource to be created.
  /// [tags] A mapping of tags to assign to the resource.
  ApplicationArgs({
    String? applicationDefinitionId,
    required String kind,
    String? location,
    required String managedResourceGroupName,
    String? name,
    String? parameterValues,
    ApplicationPlan? plan,
    required String resourceGroupName,
    Map<String, String>? tags,
  }) :
      applicationDefinitionId = pulumi.Input.asOptionalInput<String>(applicationDefinitionId),
      kind = pulumi.Input.asInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedResourceGroupName = pulumi.Input.asInput<String>(managedResourceGroupName),
      name = pulumi.Input.asOptionalInput<String>(name),
      parameterValues = pulumi.Input.asOptionalInput<String>(parameterValues),
      plan = pulumi.Input.asOptionalInput<ApplicationPlan>(plan),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationDefinitionId': ?applicationDefinitionId,
      'kind': kind,
      'location': ?location,
      'managedResourceGroupName': managedResourceGroupName,
      'name': ?name,
      'parameterValues': ?parameterValues,
      'plan': ?pulumi.Input.mapOptionalInputValue<ApplicationPlan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'tags': ?tags,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationDefinitionId: map['applicationDefinitionId'] == null ? null : map['applicationDefinitionId'] as String,
      kind: map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      managedResourceGroupName: map['managedResourceGroupName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      parameterValues: map['parameterValues'] == null ? null : map['parameterValues'] as String,
      plan: map['plan'] == null ? null : ApplicationPlan.fromMap((map['plan'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

