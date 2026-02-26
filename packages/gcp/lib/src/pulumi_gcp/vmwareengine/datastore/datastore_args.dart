// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../datastore_nfs_datastore/datastore_nfs_datastore.dart';

/// The set of arguments for Datastore.
class DatastoreArgs {
  /// User-provided description for this datastore
  final Input<String>? description;

  /// Resource ID segment making up resource <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span>. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  final Input<String> location;

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
  final Input<String>? name;

  /// The NFS datastore configuration.
  /// Structure is documented below.
  final Input<DatastoreNfsDatastore> nfsDatastore;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  DatastoreArgs({
    this.description,
    required this.location,
    this.name,
    required this.nfsDatastore,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['nfsDatastore'] =
        Input.mapInputValue<DatastoreNfsDatastore, Map<String, dynamic>>(
            nfsDatastore, (value) => value.toMap());
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory DatastoreArgs.fromMap(Map<String, dynamic> map) {
    return DatastoreArgs(
      description: Input.asOptionalInput<String>(map['description']),
      location: Input.asInput<String>(map['location']),
      name: Input.asOptionalInput<String>(map['name']),
      nfsDatastore: Input.asInput<DatastoreNfsDatastore>(map['nfsDatastore']),
      project: Input.asOptionalInput<String>(map['project']),
    );
  }
}
