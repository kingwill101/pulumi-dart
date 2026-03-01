// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_index_application_known_clients_application_known_clients_args_doc}
/// The set of arguments for ApplicationKnownClients.
/// {@endtemplate}
/// {@macro pulumi_index_application_known_clients_application_known_clients_args_doc}
class ApplicationKnownClientsArgs {
  /// The resource ID of the application registration. Changing this forces a new resource to be created.
  final pulumi.Input<String> applicationId;
  /// A set of client IDs for the known applications.
  final pulumi.Input<List<String>> knownClientIds;

  /// Creates a new [ApplicationKnownClientsArgs].
  /// [applicationId] The resource ID of the application registration. Changing this forces a new resource to be created.
  /// [knownClientIds] A set of client IDs for the known applications.
  ApplicationKnownClientsArgs({
    required String applicationId,
    required List<String> knownClientIds,
  }) :
      applicationId = pulumi.Input.asInput<String>(applicationId),
      knownClientIds = pulumi.Input.asInput<List<String>>(knownClientIds);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'applicationId': applicationId,
      'knownClientIds': knownClientIds,
    };
  }

  factory ApplicationKnownClientsArgs.fromMap(Map<String, dynamic> map) {
    return ApplicationKnownClientsArgs(
      applicationId: map['applicationId'] as String,
      knownClientIds: (map['knownClientIds'] as List).cast<String>(),
    );
  }
}

