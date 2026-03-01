// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_eventgrid_get_domain_get_domain_args_doc}
/// Arguments for getDomain.
/// {@endtemplate}
/// {@macro pulumi_eventgrid_get_domain_get_domain_args_doc}
class GetDomainArgs {
  /// The name of the EventGrid Domain resource.
  final pulumi.Input<String> name;
  /// The name of the resource group in which the EventGrid Domain exists.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetDomainArgs].
  /// [name] The name of the EventGrid Domain resource.
  /// [resourceGroupName] The name of the resource group in which the EventGrid Domain exists.
  GetDomainArgs({
    required String name,
    required String resourceGroupName,
  }) :
      name = pulumi.Input.asInput<String>(name),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetDomainArgs.fromMap(Map<String, dynamic> map) {
    return GetDomainArgs(
      name: map['name'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
    );
  }
}

