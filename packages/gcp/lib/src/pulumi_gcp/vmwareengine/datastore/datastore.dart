import 'package:pulumi/pulumi.dart';
import '../datastore_nfs_datastore/datastore_nfs_datastore.dart';
import 'datastore_args.dart';

/// A datastore resource that can be mounted on a privatecloud cluster
///
///
///
/// ## Example Usage
///
/// ### Vmware Engine Datastore Thirdparty
///
///
///
/// ### Vmware Engine Datastore Filestore
///
///
///
/// ### Vmware Engine Datastore Netapp
///
///
///
///
/// ## Import
///
/// Datastore can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/datastores/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Datastore can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/datastore:Datastore default projects/{{project}}/locations/{{location}}/datastores/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/datastore:Datastore default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:vmwareengine/datastore:Datastore default {{location}}/{{name}}
/// ```
class Datastore extends CustomResource {
  /// Clusters to which the datastore is attached.
  late final Output<List<String>> clusters;

  /// Creation time of this resource.
  late final Output<String> createTime;

  /// User-provided description for this datastore
  late final Output<String?> description;

  /// Resource ID segment making up resource `name`. It identifies the resource within its parent collection as described in https://google.aip.dev/122.
  late final Output<String> location;

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
  late final Output<String> name;

  /// The NFS datastore configuration.
  /// Structure is documented below.
  late final Output<DatastoreNfsDatastore> nfsDatastore;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The state of the Datastore.
  /// Possible values:
  /// CREATING
  /// ACTIVE
  /// UPDATING
  /// DELETING
  /// SOFT_DELETING
  /// SOFT_DELETED
  late final Output<String> state;

  /// System-generated unique identifier for the resource.
  late final Output<String> uid;

  /// Last update time of this resource.
  late final Output<String> updateTime;

  Datastore(
    String name, {
    DatastoreArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:vmwareengine/datastore:Datastore',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.clusters = registerOutput<List<String>>('clusters');
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.nfsDatastore = registerOutput<DatastoreNfsDatastore>('nfsDatastore');
    this.project = registerOutput<String>('project');
    this.state = registerOutput<String>('state');
    this.uid = registerOutput<String>('uid');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
