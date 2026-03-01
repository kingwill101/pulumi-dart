// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'automation_action_event_hub_response.dart';
import 'automation_scope_response.dart';
import 'automation_source_response.dart';

/// Result data returned by getAutomation.
class GetAutomationResult {
  /// A collection of the actions which are triggered if all the configured rules evaluations, within at least one rule set, are true.
  final List<AutomationActionEventHubResponse>? actions;
  /// The Azure API version of the resource.
  final String azureApiVersion;
  /// The security automation description.
  final String? description;
  /// Entity tag is used for comparing two or more entities from the same requested resource.
  final String? etag;
  /// Resource Id
  final String id;
  /// Indicates whether the security automation is enabled.
  final bool? isEnabled;
  /// Kind of the resource
  final String? kind;
  /// Location where the resource is stored
  final String? location;
  /// Resource name
  final String name;
  /// A collection of scopes on which the security automations logic is applied. Supported scopes are the subscription itself or a resource group under that subscription. The automation will only apply on defined scopes.
  final List<AutomationScopeResponse>? scopes;
  /// A collection of the source event types which evaluate the security automation set of rules.
  final List<AutomationSourceResponse>? sources;
  /// A list of key value pairs that describe the resource.
  final Map<String, String>? tags;
  /// Resource type
  final String type;

  /// Creates a new [GetAutomationResult].
  /// [actions] A collection of the actions which are triggered if all the configured rules evaluations, within at least one rule set, are true.
  /// [azureApiVersion] The Azure API version of the resource.
  /// [description] The security automation description.
  /// [etag] Entity tag is used for comparing two or more entities from the same requested resource.
  /// [id] Resource Id
  /// [isEnabled] Indicates whether the security automation is enabled.
  /// [kind] Kind of the resource
  /// [location] Location where the resource is stored
  /// [name] Resource name
  /// [scopes] A collection of scopes on which the security automations logic is applied. Supported scopes are the subscription itself or a resource group under that subscription. The automation will only apply on defined scopes.
  /// [sources] A collection of the source event types which evaluate the security automation set of rules.
  /// [tags] A list of key value pairs that describe the resource.
  /// [type] Resource type
  GetAutomationResult({
    this.actions,
    required this.azureApiVersion,
    this.description,
    this.etag,
    required this.id,
    this.isEnabled,
    this.kind,
    this.location,
    required this.name,
    this.scopes,
    this.sources,
    this.tags,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'actions': ?actions == null ? null : pulumi.Input.encodeList<AutomationActionEventHubResponse, Map<String, dynamic>>(actions!, (value) => value.toMap()),
      'azureApiVersion': azureApiVersion,
      'description': ?description,
      'etag': ?etag,
      'id': id,
      'isEnabled': ?isEnabled,
      'kind': ?kind,
      'location': ?location,
      'name': name,
      'scopes': ?scopes == null ? null : pulumi.Input.encodeList<AutomationScopeResponse, Map<String, dynamic>>(scopes!, (value) => value.toMap()),
      'sources': ?sources == null ? null : pulumi.Input.encodeList<AutomationSourceResponse, Map<String, dynamic>>(sources!, (value) => value.toMap()),
      'tags': ?tags,
      'type': type,
    };
  }

  factory GetAutomationResult.fromMap(Map<String, dynamic> map) {
    return GetAutomationResult(
      actions: map['actions'] == null ? null : pulumi.Input.decodeList<AutomationActionEventHubResponse>(map['actions'], (value) => AutomationActionEventHubResponse.fromMap((value as Map).cast<String, dynamic>())),
      azureApiVersion: map['azureApiVersion'] as String,
      description: map['description'] == null ? null : map['description'] as String,
      etag: map['etag'] == null ? null : map['etag'] as String,
      id: map['id'] as String,
      isEnabled: map['isEnabled'] == null ? null : map['isEnabled'] as bool,
      kind: map['kind'] == null ? null : map['kind'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      name: map['name'] as String,
      scopes: map['scopes'] == null ? null : pulumi.Input.decodeList<AutomationScopeResponse>(map['scopes'], (value) => AutomationScopeResponse.fromMap((value as Map).cast<String, dynamic>())),
      sources: map['sources'] == null ? null : pulumi.Input.decodeList<AutomationSourceResponse>(map['sources'], (value) => AutomationSourceResponse.fromMap((value as Map).cast<String, dynamic>())),
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      type: map['type'] as String,
    );
  }
}

