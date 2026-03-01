// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'application_jit_access_policy.dart';
import 'identity.dart';
import 'plan.dart';
import 'sku.dart';

/// {@template pulumi_solutions_application_args_doc}
/// The set of arguments for Application.
/// {@endtemplate}
/// {@macro pulumi_solutions_application_args_doc}
class ApplicationArgs {
  /// The fully qualified path of managed application definition Id.
  final pulumi.Input<String>? applicationDefinitionId;
  /// The name of the managed application.
  final pulumi.Input<String>? applicationName;
  /// The identity of the resource.
  final pulumi.Input<Identity>? identity;
  /// The managed application Jit access policy.
  final pulumi.Input<ApplicationJitAccessPolicy>? jitAccessPolicy;
  /// The kind of the managed application. Allowed values are MarketPlace and ServiceCatalog.
  final pulumi.Input<String> kind;
  /// Resource location
  final pulumi.Input<String>? location;
  /// ID of the resource that manages this resource.
  final pulumi.Input<String>? managedBy;
  /// The managed resource group Id.
  final pulumi.Input<String>? managedResourceGroupId;
  /// Name and value pairs that define the managed application parameters. It can be a JObject or a well formed JSON string.
  final pulumi.Input<dynamic>? parameters;
  /// The plan information.
  final pulumi.Input<Plan>? plan;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The SKU of the resource.
  final pulumi.Input<Sku>? sku;
  /// Resource tags
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [ApplicationArgs].
  /// [applicationDefinitionId] The fully qualified path of managed application definition Id.
  /// [applicationName] The name of the managed application.
  /// [identity] The identity of the resource.
  /// [jitAccessPolicy] The managed application Jit access policy.
  /// [kind] The kind of the managed application. Allowed values are MarketPlace and ServiceCatalog.
  /// [location] Resource location
  /// [managedBy] ID of the resource that manages this resource.
  /// [managedResourceGroupId] The managed resource group Id.
  /// [parameters] Name and value pairs that define the managed application parameters. It can be a JObject or a well formed JSON string.
  /// [plan] The plan information.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [sku] The SKU of the resource.
  /// [tags] Resource tags
  ApplicationArgs({
    String? applicationDefinitionId,
    String? applicationName,
    Identity? identity,
    ApplicationJitAccessPolicy? jitAccessPolicy,
    required String kind,
    String? location,
    String? managedBy,
    String? managedResourceGroupId,
    dynamic parameters,
    Plan? plan,
    required String resourceGroupName,
    Sku? sku,
    Map<String, String>? tags,
  }) :
      applicationDefinitionId = pulumi.Input.asOptionalInput<String>(applicationDefinitionId),
      applicationName = pulumi.Input.asOptionalInput<String>(applicationName),
      identity = pulumi.Input.asOptionalInput<Identity>(identity),
      jitAccessPolicy = pulumi.Input.asOptionalInput<ApplicationJitAccessPolicy>(jitAccessPolicy),
      kind = pulumi.Input.asInput<String>(kind),
      location = pulumi.Input.asOptionalInput<String>(location),
      managedBy = pulumi.Input.asOptionalInput<String>(managedBy),
      managedResourceGroupId = pulumi.Input.asOptionalInput<String>(managedResourceGroupId),
      parameters = pulumi.Input.asOptionalInput<dynamic>(parameters),
      plan = pulumi.Input.asOptionalInput<Plan>(plan),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      sku = pulumi.Input.asOptionalInput<Sku>(sku),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationDefinitionId': ?applicationDefinitionId,
      'applicationName': ?applicationName,
      'identity': ?pulumi.Input.mapOptionalInputValue<Identity, Map<String, dynamic>>(identity, (value) => value.toMap()),
      'jitAccessPolicy': ?pulumi.Input.mapOptionalInputValue<ApplicationJitAccessPolicy, Map<String, dynamic>>(jitAccessPolicy, (value) => value.toMap()),
      'kind': kind,
      'location': ?location,
      'managedBy': ?managedBy,
      'managedResourceGroupId': ?managedResourceGroupId,
      'parameters': ?parameters,
      'plan': ?pulumi.Input.mapOptionalInputValue<Plan, Map<String, dynamic>>(plan, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'sku': ?pulumi.Input.mapOptionalInputValue<Sku, Map<String, dynamic>>(sku, (value) => value.toMap()),
      'tags': ?tags,
    };
  }

  factory ApplicationArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationArgs(
      applicationDefinitionId: map['applicationDefinitionId'] == null ? null : map['applicationDefinitionId'] as String,
      applicationName: map['applicationName'] == null ? null : map['applicationName'] as String,
      identity: map['identity'] == null ? null : Identity.fromMap((map['identity'] as Map).cast<String, dynamic>()),
      jitAccessPolicy: map['jitAccessPolicy'] == null ? null : ApplicationJitAccessPolicy.fromMap((map['jitAccessPolicy'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      managedBy: map['managedBy'] == null ? null : map['managedBy'] as String,
      managedResourceGroupId: map['managedResourceGroupId'] == null ? null : map['managedResourceGroupId'] as String,
      parameters: map['parameters'] == null ? null : map['parameters'],
      plan: map['plan'] == null ? null : Plan.fromMap((map['plan'] as Map).cast<String, dynamic>()),
      resourceGroupName: map['resourceGroupName'] as String,
      sku: map['sku'] == null ? null : Sku.fromMap((map['sku'] as Map).cast<String, dynamic>()),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
    );
  }
}

