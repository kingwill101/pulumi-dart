// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'datastore_nfs_datastore.dart';

/// {@template pulumi_vmwareengine_datastore_datastore_args_doc}
/// The set of arguments for Datastore.
/// {@endtemplate}
/// {@macro pulumi_vmwareengine_datastore_datastore_args_doc}
class DatastoreArgs {
  /// User-provided description for this datastore
  final pulumi.Input<String>? description;
  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final pulumi.Input<String> location;
  /// The user-provided identifier of the datastore to be created.
  /// This identifier must be unique among each `Datastore` within the parent
  /// and becomes the final token in the name URI.
  /// The identifier must meet the following requirements:
  /// * Only contains 1-63 alphanumeric characters and hyphens
  /// * Begins with an alphabetical character
  /// * Ends with a non-hyphen character
  /// * Not formatted as a UUID
  /// * Complies with [RFC 1034](https://datatracker.ietf.org/doc/html/rfc1034)
  /// (section 3.5)
  final pulumi.Input<String>? name;
  /// The NFS datastore configuration.
  /// Structure is documented below.
  final pulumi.Input<DatastoreNfsDatastore> nfsDatastore;
  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// Creates a new [DatastoreArgs].
  /// [description] User-provided description for this datastore
  /// [location] Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  /// [name] The user-provided identifier of the datastore to be created.
  /// [nfsDatastore] The NFS datastore configuration.
  /// [project] The ID of the project in which the resource belongs.
  DatastoreArgs({
    String? description,
    required String location,
    String? name,
    required DatastoreNfsDatastore nfsDatastore,
    String? project,
  }) :
      description = pulumi.Input.asOptionalInput<String>(description),
      location = pulumi.Input.asInput<String>(location),
      name = pulumi.Input.asOptionalInput<String>(name),
      nfsDatastore = pulumi.Input.asInput<DatastoreNfsDatastore>(nfsDatastore),
      project = pulumi.Input.asOptionalInput<String>(project);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'location': location,
      'name': ?name,
      'nfsDatastore': pulumi.Input.mapInputValue<DatastoreNfsDatastore, Map<String, dynamic>>(nfsDatastore, (value) => value.toMap()),
      'project': ?project,
    };
  }

  factory DatastoreArgs.fromMap(Map<String, dynamic> map) {
    return DatastoreArgs(
      description: map['description'] == null ? null : map['description'] as String,
      location: map['location'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nfsDatastore: DatastoreNfsDatastore.fromMap((map['nfsDatastore'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
    );
  }
}

