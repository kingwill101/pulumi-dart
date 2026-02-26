import 'package:pulumi/pulumi.dart';
import 'get_db_nodes_args.dart';
import 'get_db_nodes_result.dart';

/// List all DbNodes of a Cloud VmCluster.
///
/// For more information see the
/// [API](https://cloud.google.com/oracle/database/docs/reference/rest/v1/projects.locations.cloudVmClusters.dbNodes).
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const myDbNodes = gcp.oracledatabase.getDbNodes({
/// location: "us-east4",
/// cloudVmCluster: "vmcluster-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// my_db_nodes = gcp.oracledatabase.get_db_nodes(location="us-east4",
/// cloud_vm_cluster="vmcluster-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var myDbNodes = Gcp.OracleDatabase.GetDbNodes.Invoke(new()
/// {
/// Location = "us-east4",
/// CloudVmCluster = "vmcluster-id",
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
/// _, err := oracledatabase.GetDbNodes(ctx, &oracledatabase.GetDbNodesArgs{
/// Location:       "us-east4",
/// CloudVmCluster: "vmcluster-id",
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
/// import com.pulumi.gcp.oracledatabase.inputs.GetDbNodesArgs;
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
/// final var myDbNodes = OracledatabaseFunctions.getDbNodes(GetDbNodesArgs.builder()
/// .location("us-east4")
/// .cloudVmCluster("vmcluster-id")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// variables:
/// myDbNodes:
/// fn::invoke:
/// function: gcp:oracledatabase:getDbNodes
/// arguments:
/// location: us-east4
/// cloudVmCluster: vmcluster-id
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Attributes reference
///
/// The following attributes are exported:
///
/// * <span pulumi-lang-nodejs="`dbNodes`" pulumi-lang-dotnet="`DbNodes`" pulumi-lang-go="`dbNodes`" pulumi-lang-python="`db_nodes`" pulumi-lang-yaml="`dbNodes`" pulumi-lang-java="`dbNodes`">`db_nodes`</span> - List of dbNodes. Structure is documented below.
///
/// <a name=<span pulumi-lang-nodejs=""nestedDbnodes"" pulumi-lang-dotnet=""NestedDbnodes"" pulumi-lang-go=""nestedDbnodes"" pulumi-lang-python=""nested_dbnodes"" pulumi-lang-yaml=""nestedDbnodes"" pulumi-lang-java=""nestedDbnodes"">"nested_dbnodes"</span>></a> The <span pulumi-lang-nodejs="`dbNodes`" pulumi-lang-dotnet="`DbNodes`" pulumi-lang-go="`dbNodes`" pulumi-lang-python="`db_nodes`" pulumi-lang-yaml="`dbNodes`" pulumi-lang-java="`dbNodes`">`db_nodes`</span> block supports:
///
/// * <span pulumi-lang-nodejs="`name`" pulumi-lang-dotnet="`Name`" pulumi-lang-go="`name`" pulumi-lang-python="`name`" pulumi-lang-yaml="`name`" pulumi-lang-java="`name`">`name`</span> - The name of the database node resource in the following format: projects/{project}/locations/{location}/cloudVmClusters/{cloudVmCluster}/dbNodes/{db_node}
///
/// * <span pulumi-lang-nodejs="`properties`" pulumi-lang-dotnet="`Properties`" pulumi-lang-go="`properties`" pulumi-lang-python="`properties`" pulumi-lang-yaml="`properties`" pulumi-lang-java="`properties`">`properties`</span> - Various properties of the database node. Structure is documented below.
///
/// <a name=<span pulumi-lang-nodejs=""nestedProperties"" pulumi-lang-dotnet=""NestedProperties"" pulumi-lang-go=""nestedProperties"" pulumi-lang-python=""nested_properties"" pulumi-lang-yaml=""nestedProperties"" pulumi-lang-java=""nestedProperties"">"nested_properties"</span>></a> The <span pulumi-lang-nodejs="`properties`" pulumi-lang-dotnet="`Properties`" pulumi-lang-go="`properties`" pulumi-lang-python="`properties`" pulumi-lang-yaml="`properties`" pulumi-lang-java="`properties`">`properties`</span> block supports:
///
/// * <span pulumi-lang-nodejs="`ocid`" pulumi-lang-dotnet="`Ocid`" pulumi-lang-go="`ocid`" pulumi-lang-python="`ocid`" pulumi-lang-yaml="`ocid`" pulumi-lang-java="`ocid`">`ocid`</span>- OCID of database node.
///
/// * <span pulumi-lang-nodejs="`ocpuCount`" pulumi-lang-dotnet="`OcpuCount`" pulumi-lang-go="`ocpuCount`" pulumi-lang-python="`ocpu_count`" pulumi-lang-yaml="`ocpuCount`" pulumi-lang-java="`ocpuCount`">`ocpu_count`</span> - OCPU count per database node.
///
/// * <span pulumi-lang-nodejs="`memorySizeGb`" pulumi-lang-dotnet="`MemorySizeGb`" pulumi-lang-go="`memorySizeGb`" pulumi-lang-python="`memory_size_gb`" pulumi-lang-yaml="`memorySizeGb`" pulumi-lang-java="`memorySizeGb`">`memory_size_gb`</span> - The allocated memory in GBs on the database node.
///
/// * <span pulumi-lang-nodejs="`dbNodeStorageSizeGb`" pulumi-lang-dotnet="`DbNodeStorageSizeGb`" pulumi-lang-go="`dbNodeStorageSizeGb`" pulumi-lang-python="`db_node_storage_size_gb`" pulumi-lang-yaml="`dbNodeStorageSizeGb`" pulumi-lang-java="`dbNodeStorageSizeGb`">`db_node_storage_size_gb`</span> - The allocated local node storage in GBs on the database node.
///
/// * <span pulumi-lang-nodejs="`dbServerOcid`" pulumi-lang-dotnet="`DbServerOcid`" pulumi-lang-go="`dbServerOcid`" pulumi-lang-python="`db_server_ocid`" pulumi-lang-yaml="`dbServerOcid`" pulumi-lang-java="`dbServerOcid`">`db_server_ocid`</span> - The OCID of the Database server associated with the database node.
///
/// * <span pulumi-lang-nodejs="`hostname`" pulumi-lang-dotnet="`Hostname`" pulumi-lang-go="`hostname`" pulumi-lang-python="`hostname`" pulumi-lang-yaml="`hostname`" pulumi-lang-java="`hostname`">`hostname`</span> - The host name for the database node.
///
/// * <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> - State of the database node.
/// <a name=<span pulumi-lang-nodejs=""nestedStates"" pulumi-lang-dotnet=""NestedStates"" pulumi-lang-go=""nestedStates"" pulumi-lang-python=""nested_states"" pulumi-lang-yaml=""nestedStates"" pulumi-lang-java=""nestedStates"">"nested_states"</span>></a>Possible values for <span pulumi-lang-nodejs="`state`" pulumi-lang-dotnet="`State`" pulumi-lang-go="`state`" pulumi-lang-python="`state`" pulumi-lang-yaml="`state`" pulumi-lang-java="`state`">`state`</span> are:<br>
/// `PROVISIONING` - Indicates that the resource is being provisioned.<br>
/// `AVAILABLE` - Indicates that the resource is available.<br>
/// `UPDATING` - Indicates that the resource is being updated.<br>
/// `STOPPING` - Indicates that the resource is being stopped.<br>
/// `STOPPED` - Indicates that the resource is stopped.<br>
/// `STARTING` - Indicates that the resource is being started.<br>
/// `TERMINATING` - Indicates that the resource is being terminated.<br>
/// `TERMINATED` - Indicates that the resource is terminated.<br>
/// `FAILED` - Indicates that the resource has failed.<br>
///
/// * <span pulumi-lang-nodejs="`totalCpuCoreCount`" pulumi-lang-dotnet="`TotalCpuCoreCount`" pulumi-lang-go="`totalCpuCoreCount`" pulumi-lang-python="`total_cpu_core_count`" pulumi-lang-yaml="`totalCpuCoreCount`" pulumi-lang-java="`totalCpuCoreCount`">`total_cpu_core_count`</span> - The total number of CPU cores reserved on the database node.
Future<GetDbNodesResult> getDbNodes(
  GetDbNodesArgs args, {
  InvokeOptions? options,
}) async {
  final deployment = Deployment.instance;
  final result = await deployment.invoke<Map<String, dynamic>>(
    'gcp:oracledatabase/getDbNodes:getDbNodes',
    args.toMap(),
    options: toDeploymentInvokeOptions(options),
  );
  return GetDbNodesResult.fromMap(result);
}
