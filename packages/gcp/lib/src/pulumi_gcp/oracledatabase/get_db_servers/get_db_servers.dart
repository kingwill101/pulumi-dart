import 'package:pulumi/pulumi.dart';
import 'get_db_servers_args.dart';
import 'get_db_servers_result.dart';

/// List all DbServers of a Cloud Exdata Infrastructure.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudExadataInfrastructures.dbServers).
///
/// ## Example Usage
///
///
///
/// ## Attributes reference
///
/// The following attributes are exported:
///
/// * `db_servers` - List of dbServers. Structure is documented below.
///
/// <a name="nested_dbservers"></a> The `db_servers` block supports:
///
/// * `display_name` - User friendly name for the resource.
///
/// * `properties` - Various properties of the databse server. Structure is documented below.
///
/// <a name="nested_properties"></a> The `properties` block supports:
///
/// * `ocid` - The OCID of database server.
///
/// * `ocpu_count` - The OCPU count per database.
///
/// * `max_ocpu_count` - The total number of CPU cores available.
///
/// * `memory_size_gb` - The allocated memory in gigabytes on the database server.
///
/// * `max_memory_size_gb` - The total memory available in gigabytes.
///
/// * `db_node_storage_size_gb` - The local storage per VM.
///
/// * `max_db_node_storage_size_gb` - The total local node storage available in GBs.
///
/// * `vm_count` - The VM count per database.
///
/// * `state` - The current state of the database server.
/// <a name="nested_states"></a>Allowed values for `state` are:<br>
/// `CREATING` - Indicates that the resource is being created.<br>
/// `AVAILABLE` - Indicates that the resource is available.<br>
/// `UNAVAILABLE` - Indicates that the resource is unavailable.<br>
/// `DELETING` - Indicates that the resource is being deleted.<br>
/// `DELETED` - Indicates that the resource has been deleted.<br>
///
/// * `db_node_ids` - The OCID of database nodes associated with the database server.
Future<GetDbServersResult> getDbServers(
  GetDbServersArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getDbServers:getDbServers',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDbServersResult.fromMap(result);
}
