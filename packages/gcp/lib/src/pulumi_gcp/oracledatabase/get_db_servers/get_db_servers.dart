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
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myDbServers = gcp.oracledatabase.getDbServers({
/// location: "us-east4",
/// cloudExadataInfrastructure: "exadata-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_db_servers = gcp.oracledatabase.get_db_servers(location="us-east4",
/// cloud_exadata_infrastructure="exadata-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myDbServers = Gcp.OracleDatabase.GetDbServers.Invoke(new()
/// {
/// Location = "us-east4",
/// CloudExadataInfrastructure = "exadata-id",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/oracledatabase"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := oracledatabase.GetDbServers(ctx, &oracledatabase.GetDbServersArgs{
/// Location:                   "us-east4",
/// CloudExadataInfrastructure: "exadata-id",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// return nil
/// })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.gcp.oracledatabase.OracledatabaseFunctions;
/// import com.pulumi.gcp.oracledatabase.inputs.GetDbServersArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var myDbServers = OracledatabaseFunctions.getDbServers(GetDbServersArgs.builder()
/// .location("us-east4")
/// .cloudExadataInfrastructure("exadata-id")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myDbServers:
/// fn::invoke:
/// function: gcp:oracledatabase:getDbServers
/// arguments:
/// location: us-east4
/// cloudExadataInfrastructure: exadata-id
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Attributes reference
///
/// The following attributes are exported:
///
/// * <span pulumi-lang-nodejs="`dbServers`" pulumi-lang-dotnet="`DbServers`" pulumi-lang-go="`dbServers`" pulumi-lang-python="`db_servers`" pulumi-lang-yaml="`dbServers`" pulumi-lang-java="`dbServers`">`db_servers`</span> - List of dbServers. Structure is documented below.
///
/// <a name=<span pulumi-lang-nodejs=""nestedDbservers"" pulumi-lang-dotnet=""NestedDbservers"" pulumi-lang-go=""nestedDbservers"" pulumi-lang-python=""nested_dbservers"" pulumi-lang-yaml=""nestedDbservers"" pulumi-lang-java=""nestedDbservers"">"nested_dbservers"</span>></a> The <span pulumi-lang-nodejs="`dbServers`" pulumi-lang-dotnet="`DbServers`" pulumi-lang-go="`dbServers`" pulumi-lang-python="`db_servers`" pulumi-lang-yaml="`dbServers`" pulumi-lang-java="`dbServers`">`db_servers`</span> block supports:
///
/// * <span pulumi-lang-nodejs="`displayName`" pulumi-lang-dotnet="`DisplayName`" pulumi-lang-go="`displayName`" pulumi-lang-python="`display_name`" pulumi-lang-yaml="`displayName`" pulumi-lang-java="`displayName`">`display_name`</span> - User friendly name for the resource.
///
/// * <span pulumi-lang-nodejs="`properties`" pulumi-lang-dotnet="`Properties`" pulumi-lang-go="`properties`" pulumi-lang-python="`properties`" pulumi-lang-yaml="`properties`" pulumi-lang-java="`properties`">`properties`</span> - Various properties of the databse server. Structure is documented below.
///
/// <a name=<span pulumi-lang-nodejs=""nestedProperties"" pulumi-lang-dotnet=""NestedProperties"" pulumi-lang-go=""nestedProperties"" pulumi-lang-python=""nested_properties"" pulumi-lang-yaml=""nestedProperties"" pulumi-lang-java=""nestedProperties"">"nested_properties"</span>></a> The <span pulumi-lang-nodejs="`properties`" pulumi-lang-dotnet="`Properties`" pulumi-lang-go="`properties`" pulumi-lang-python="`properties`" pulumi-lang-yaml="`properties`" pulumi-lang-java="`properties`">`properties`</span> block supports:
///
/// * <span pulumi-lang-nodejs="`ocid`" pulumi-lang-dotnet="`Ocid`" pulumi-lang-go="`ocid`" pulumi-lang-python="`ocid`" pulumi-lang-yaml="`ocid`" pulumi-lang-java="`ocid`">`ocid`</span> - The OCID of database server.
///
/// * <span pulumi-lang-nodejs="`ocpuCount`" pulumi-lang-dotnet="`OcpuCount`" pulumi-lang-go="`ocpuCount`" pulumi-lang-python="`ocpu_count`" pulumi-lang-yaml="`ocpuCount`" pulumi-lang-java="`ocpuCount`">`ocpu_count`</span> - The OCPU count per database.
///
/// * <span pulumi-lang-nodejs="`maxOcpuCount`" pulumi-lang-dotnet="`MaxOcpuCount`" pulumi-lang-go="`maxOcpuCount`" pulumi-lang-python="`max_ocpu_count`" pulumi-lang-yaml="`maxOcpuCount`" pulumi-lang-java="`maxOcpuCount`">`max_ocpu_count`</span> - The total number of CPU cores available.
///
/// * <span pulumi-lang-nodejs="`memorySizeGb`" pulumi-lang-dotnet="`MemorySizeGb`" pulumi-lang-go="`memorySizeGb`" pulumi-lang-python="`memory_size_gb`" pulumi-lang-yaml="`memorySizeGb`" pulumi-lang-java="`memorySizeGb`">`memory_size_gb`</span> - The allocated memory in gigabytes on the database server.
///
/// * <span pulumi-lang-nodejs="`maxMemorySizeGb`" pulumi-lang-dotnet="`MaxMemorySizeGb`" pulumi-lang-go="`maxMemorySizeGb`" pulumi-lang-python="`max_memory_size_gb`" pulumi-lang-yaml="`maxMemorySizeGb`" pulumi-lang-java="`maxMemorySizeGb`">`max_memory_size_gb`</span> - The total memory available in gigabytes.
///
/// * <span pulumi-lang-nodejs="`dbNodeStorageSizeGb`" pulumi-lang-dotnet="`DbNodeStorageSizeGb`" pulumi-lang-go="`dbNodeStorageSizeGb`" pulumi-lang-python="`db_node_storage_size_gb`" pulumi-lang-yaml="`dbNodeStorageSizeGb`" pulumi-lang-java="`dbNodeStorageSizeGb`">`db_node_storage_size_gb`</span> - The local storage per VM.
///
/// * <span pulumi-lang-nodejs="`maxDbNodeStorageSizeGb`" pulumi-lang-dotnet="`MaxDbNodeStorageSizeGb`" pulumi-lang-go="`maxDbNodeStorageSizeGb`" pulumi-lang-python="`max_db_node_storage_size_gb`" pulumi-lang-yaml="`maxDbNodeStorageSizeGb`" pulumi-lang-java="`maxDbNodeStorageSizeGb`">`max_db_node_storage_size_gb`</span> - The total local node storage available in GBs.
///
/// * <span pulumi-lang-nodejs="`vmCount`" pulumi-lang-dotnet="`VmCount`" pulumi-lang-go="`vmCount`" pulumi-lang-python="`vm_count`" pulumi-lang-yaml="`vmCount`" pulumi-lang-java="`vmCount`">`vm_count`</span> - The VM count per database.
///
/// * <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> - The current state of the database server.
/// <a name=<span pulumi-lang-nodejs=""nestedStates"" pulumi-lang-dotnet=""NestedStates"" pulumi-lang-go=""nestedStates"" pulumi-lang-python=""nested_states"" pulumi-lang-yaml=""nestedStates"" pulumi-lang-java=""nestedStates"">"nested_states"</span>></a>Allowed values for <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> are:<br>
/// `CREATING` - Indicates that the resource is being created.<br>
/// `AVAILABLE` - Indicates that the resource is available.<br>
/// `UNAVAILABLE` - Indicates that the resource is unavailable.<br>
/// `DELETING` - Indicates that the resource is being deleted.<br>
/// `DELETED` - Indicates that the resource has been deleted.<br>
///
/// * <span pulumi-lang-nodejs="`dbNodeIds`" pulumi-lang-dotnet="`DbNodeIds`" pulumi-lang-go="`dbNodeIds`" pulumi-lang-python="`db_node_ids`" pulumi-lang-yaml="`dbNodeIds`" pulumi-lang-java="`dbNodeIds`">`db_node_ids`</span> - The OCID of database nodes associated with the database server.
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
