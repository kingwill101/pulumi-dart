import 'package:pulumi/pulumi.dart' as pulumi;
import 'flow_pipeline_args.dart';
import 'flow_pipeline_state.dart';

/// Provides a Pai Flow Pipeline resource.
///
///
///
/// For information about Pai Flow Pipeline and how to use it, see [What is Pipeline](https://www.alibabacloud.com/help/en/pai/developer-reference/api-paiflow-2021-02-02-createpipeline).
///
/// &gt; **NOTE:** Available since v1.248.0.
///
/// ## Example Usage
///
/// Basic Usage
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
/// import * as random from "@pulumi/random";
///
/// const config = new pulumi.Config();
/// const name = config.get("name") || "terraform_example";
/// const _default = alicloud.getAccount({});
/// const defaultInteger = new random.index.Integer("default", {
///     min: 10000,
///     max: 99999,
/// });
/// const defaultWjQD1e = new alicloud.pai.WorkspaceWorkspace("defaultWjQD1e", {
///     description: name,
///     displayName: name,
///     workspaceName: name,
///     envTypes: ["dev"],
/// });
/// const defaultFlowPipeline = new alicloud.pai.FlowPipeline("default", {
///     workspaceId: defaultWjQD1e.id,
///     manifest: _default.then(_default => `apiVersion: \"core/v1\"
/// metadata:
///   provider: \"${_default.id}\"
///   version: \"v1\"
///   identifier: \"my_pipeline\"
///   name: \"source-transform\"
///   uuid: \"terraformuuid${defaultInteger.result}\"
///   annotations: {}
///   labels: {}
/// spec:
///   inputs:
///     artifacts: []
///     parameters:
///     - name: \"execution_maxcompute\"
///       type: \"Map\"
///       value:
///         spec:
///           endpoint: \"http://service.cn.maxcompute.aliyun-inc.com/api\"
///           odpsProject: \"test_i****\"
///   outputs:
///     artifacts: []
///     parameters: []
///   arguments:
///     artifacts: []
///     parameters: []
///   dependencies: []
///   initContainers: []
///   sideCarContainers: []
///   pipelines:
///   - apiVersion: \"core/v1\"
///     metadata:
///       provider: \"pai\"
///       version: \"v1\"
///       identifier: \"data_source\"
///       name: \"data-source\"
///       uuid: \"2ftahdnzcod2rt6u9q\"
///       displayName: \"读数据表-1\"
///       annotations: {}
///       labels: {}
///     spec:
///       inputs:
///         artifacts: []
///         parameters: []
///       outputs:
///         artifacts: []
///         parameters: []
///       arguments:
///         artifacts: []
///         parameters:
///         - name: \"inputTableName\"
///           value: \"pai_online_project.wumai_data\"
///         - name: \"execution\"
///           from: \"{{inputs.parameters.execution_maxcompute}}\"
///       dependencies: []
///       initContainers: []
///       sideCarContainers: []
///       pipelines: []
///       volumes: []
///   - apiVersion: \"core/v1\"
///     metadata:
///       provider: \"pai\"
///       version: \"v1\"
///       identifier: \"type_transform\"
///       name: \"type-transform\"
///       uuid: \"gacnnnl4ksvbabfh6l\"
///       displayName: \"类型转换-1\"
///       annotations: {}
///       labels: {}
///     spec:
///       inputs:
///         artifacts: []
///         parameters: []
///       outputs:
///         artifacts: []
///         parameters: []
///       arguments:
///         artifacts:
///         - name: \"inputTable\"
///           from: \"{{pipelines.data_source.outputs.artifacts.outputTable}}\"
///         parameters:
///         - name: \"cols_to_double\"
///           value: \"time,hour,pm2,pm10,so2,co,no2\"
///         - name: \"execution\"
///           from: \"{{inputs.parameters.execution_maxcompute}}\"
///       dependencies:
///       - \"data_source\"
///       initContainers: []
///       sideCarContainers: []
///       pipelines: []
///       volumes: []
///   volumes: []
/// `),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
/// import pulumi_random as random
///
/// config = pulumi.Config()
/// name = config.get("name")
/// if name is None:
///     name = "terraform_example"
/// default = alicloud.get_account()
/// default_integer = random.index.Integer("default",
///     min=10000,
///     max=99999)
/// default_wj_qd1e = alicloud.pai.WorkspaceWorkspace("defaultWjQD1e",
///     description=name,
///     display_name=name,
///     workspace_name=name,
///     env_types=["dev"])
/// default_flow_pipeline = alicloud.pai.FlowPipeline("default",
///     workspace_id=default_wj_qd1e.id,
///     manifest=f"""apiVersion: \"core/v1\"
/// metadata:
///   provider: \"{default.id}\"
///   version: \"v1\"
///   identifier: \"my_pipeline\"
///   name: \"source-transform\"
///   uuid: \"terraformuuid{default_integer["result"]}\"
///   annotations: {{}}
///   labels: {{}}
/// spec:
///   inputs:
///     artifacts: []
///     parameters:
///     - name: \"execution_maxcompute\"
///       type: \"Map\"
///       value:
///         spec:
///           endpoint: \"http://service.cn.maxcompute.aliyun-inc.com/api\"
///           odpsProject: \"test_i****\"
///   outputs:
///     artifacts: []
///     parameters: []
///   arguments:
///     artifacts: []
///     parameters: []
///   dependencies: []
///   initContainers: []
///   sideCarContainers: []
///   pipelines:
///   - apiVersion: \"core/v1\"
///     metadata:
///       provider: \"pai\"
///       version: \"v1\"
///       identifier: \"data_source\"
///       name: \"data-source\"
///       uuid: \"2ftahdnzcod2rt6u9q\"
///       displayName: \"读数据表-1\"
///       annotations: {{}}
///       labels: {{}}
///     spec:
///       inputs:
///         artifacts: []
///         parameters: []
///       outputs:
///         artifacts: []
///         parameters: []
///       arguments:
///         artifacts: []
///         parameters:
///         - name: \"inputTableName\"
///           value: \"pai_online_project.wumai_data\"
///         - name: \"execution\"
///           from: \"{{{{inputs.parameters.execution_maxcompute}}}}\"
///       dependencies: []
///       initContainers: []
///       sideCarContainers: []
///       pipelines: []
///       volumes: []
///   - apiVersion: \"core/v1\"
///     metadata:
///       provider: \"pai\"
///       version: \"v1\"
///       identifier: \"type_transform\"
///       name: \"type-transform\"
///       uuid: \"gacnnnl4ksvbabfh6l\"
///       displayName: \"类型转换-1\"
///       annotations: {{}}
///       labels: {{}}
///     spec:
///       inputs:
///         artifacts: []
///         parameters: []
///       outputs:
///         artifacts: []
///         parameters: []
///       arguments:
///         artifacts:
///         - name: \"inputTable\"
///           from: \"{{{{pipelines.data_source.outputs.artifacts.outputTable}}}}\"
///         parameters:
///         - name: \"cols_to_double\"
///           value: \"time,hour,pm2,pm10,so2,co,no2\"
///         - name: \"execution\"
///           from: \"{{{{inputs.parameters.execution_maxcompute}}}}\"
///       dependencies:
///       - \"data_source\"
///       initContainers: []
///       sideCarContainers: []
///       pipelines: []
///       volumes: []
///   volumes: []
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
/// using Random = Pulumi.Random;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var config = new Config();
///     var name = config.Get("name") ?? "terraform_example";
///     var @default = AliCloud.GetAccount.Invoke();
///
///     var defaultInteger = new Random.Index.Integer("default", new()
///     {
///         Min = 10000,
///         Max = 99999,
///     });
///
///     var defaultWjQD1e = new AliCloud.Pai.WorkspaceWorkspace("defaultWjQD1e", new()
///     {
///         Description = name,
///         DisplayName = name,
///         WorkspaceName = name,
///         EnvTypes = new[]
///         {
///             "dev",
///         },
///     });
///
///     var defaultFlowPipeline = new AliCloud.Pai.FlowPipeline("default", new()
///     {
///         WorkspaceId = defaultWjQD1e.Id,
///         Manifest = @default.Apply(@default => @$"apiVersion: \""core/v1\""
/// metadata:
///   provider: \""{@default.Apply(getAccountResult => getAccountResult.Id)}\""
///   version: \""v1\""
///   identifier: \""my_pipeline\""
///   name: \""source-transform\""
///   uuid: \""terraformuuid{defaultInteger.Result}\""
///   annotations: {{}}
///   labels: {{}}
/// spec:
///   inputs:
///     artifacts: []
///     parameters:
///     - name: \""execution_maxcompute\""
///       type: \""Map\""
///       value:
///         spec:
///           endpoint: \""http://service.cn.maxcompute.aliyun-inc.com/api\""
///           odpsProject: \""test_i****\""
///   outputs:
///     artifacts: []
///     parameters: []
///   arguments:
///     artifacts: []
///     parameters: []
///   dependencies: []
///   initContainers: []
///   sideCarContainers: []
///   pipelines:
///   - apiVersion: \""core/v1\""
///     metadata:
///       provider: \""pai\""
///       version: \""v1\""
///       identifier: \""data_source\""
///       name: \""data-source\""
///       uuid: \""2ftahdnzcod2rt6u9q\""
///       displayName: \""读数据表-1\""
///       annotations: {{}}
///       labels: {{}}
///     spec:
///       inputs:
///         artifacts: []
///         parameters: []
///       outputs:
///         artifacts: []
///         parameters: []
///       arguments:
///         artifacts: []
///         parameters:
///         - name: \""inputTableName\""
///           value: \""pai_online_project.wumai_data\""
///         - name: \""execution\""
///           from: \""{{{{inputs.parameters.execution_maxcompute}}}}\""
///       dependencies: []
///       initContainers: []
///       sideCarContainers: []
///       pipelines: []
///       volumes: []
///   - apiVersion: \""core/v1\""
///     metadata:
///       provider: \""pai\""
///       version: \""v1\""
///       identifier: \""type_transform\""
///       name: \""type-transform\""
///       uuid: \""gacnnnl4ksvbabfh6l\""
///       displayName: \""类型转换-1\""
///       annotations: {{}}
///       labels: {{}}
///     spec:
///       inputs:
///         artifacts: []
///         parameters: []
///       outputs:
///         artifacts: []
///         parameters: []
///       arguments:
///         artifacts:
///         - name: \""inputTable\""
///           from: \""{{{{pipelines.data_source.outputs.artifacts.outputTable}}}}\""
///         parameters:
///         - name: \""cols_to_double\""
///           value: \""time,hour,pm2,pm10,so2,co,no2\""
///         - name: \""execution\""
///           from: \""{{{{inputs.parameters.execution_maxcompute}}}}\""
///       dependencies:
///       - \""data_source\""
///       initContainers: []
///       sideCarContainers: []
///       pipelines: []
///       volumes: []
///   volumes: []
/// "),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"fmt"
///
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud"
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/pai"
/// 	"github.com/pulumi/pulumi-random/sdk/v4/go/random"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi/config"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		cfg := config.New(ctx, "")
/// 		name := "terraform_example"
/// 		if param := cfg.Get("name"); param != "" {
/// 			name = param
/// 		}
/// 		_default, err := alicloud.GetAccount(ctx, map[string]interface{}{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultInteger, err := random.NewInteger(ctx, "default", &random.IntegerArgs{
/// 			Min: 10000,
/// 			Max: 99999,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		defaultWjQD1e, err := pai.NewWorkspaceWorkspace(ctx, "defaultWjQD1e", &pai.WorkspaceWorkspaceArgs{
/// 			Description:   pulumi.String(name),
/// 			DisplayName:   pulumi.String(name),
/// 			WorkspaceName: pulumi.String(name),
/// 			EnvTypes: pulumi.StringArray{
/// 				pulumi.String("dev"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = pai.NewFlowPipeline(ctx, "default", &pai.FlowPipelineArgs{
/// 			WorkspaceId: defaultWjQD1e.ID(),
/// 			Manifest: pulumi.Sprintf(`apiVersion: \"core/v1\"
/// metadata:
///   provider: \"%v\"
///   version: \"v1\"
///   identifier: \"my_pipeline\"
///   name: \"source-transform\"
///   uuid: \"terraformuuid%v\"
///   annotations: {}
///   labels: {}
/// spec:
///   inputs:
///     artifacts: []
///     parameters:
///     - name: \"execution_maxcompute\"
///       type: \"Map\"
///       value:
///         spec:
///           endpoint: \"http://service.cn.maxcompute.aliyun-inc.com/api\"
///           odpsProject: \"test_i****\"
///   outputs:
///     artifacts: []
///     parameters: []
///   arguments:
///     artifacts: []
///     parameters: []
///   dependencies: []
///   initContainers: []
///   sideCarContainers: []
///   pipelines:
///   - apiVersion: \"core/v1\"
///     metadata:
///       provider: \"pai\"
///       version: \"v1\"
///       identifier: \"data_source\"
///       name: \"data-source\"
///       uuid: \"2ftahdnzcod2rt6u9q\"
///       displayName: \"读数据表-1\"
///       annotations: {}
///       labels: {}
///     spec:
///       inputs:
///         artifacts: []
///         parameters: []
///       outputs:
///         artifacts: []
///         parameters: []
///       arguments:
///         artifacts: []
///         parameters:
///         - name: \"inputTableName\"
///           value: \"pai_online_project.wumai_data\"
///         - name: \"execution\"
///           from: \"{{inputs.parameters.execution_maxcompute}}\"
///       dependencies: []
///       initContainers: []
///       sideCarContainers: []
///       pipelines: []
///       volumes: []
///   - apiVersion: \"core/v1\"
///     metadata:
///       provider: \"pai\"
///       version: \"v1\"
///       identifier: \"type_transform\"
///       name: \"type-transform\"
///       uuid: \"gacnnnl4ksvbabfh6l\"
///       displayName: \"类型转换-1\"
///       annotations: {}
///       labels: {}
///     spec:
///       inputs:
///         artifacts: []
///         parameters: []
///       outputs:
///         artifacts: []
///         parameters: []
///       arguments:
///         artifacts:
///         - name: \"inputTable\"
///           from: \"{{pipelines.data_source.outputs.artifacts.outputTable}}\"
///         parameters:
///         - name: \"cols_to_double\"
///           value: \"time,hour,pm2,pm10,so2,co,no2\"
///         - name: \"execution\"
///           from: \"{{inputs.parameters.execution_maxcompute}}\"
///       dependencies:
///       - \"data_source\"
///       initContainers: []
///       sideCarContainers: []
///       pipelines: []
///       volumes: []
///   volumes: []
/// `, _default.Id, defaultInteger.Result),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.alicloud.AlicloudFunctions;
/// import com.pulumi.random.Integer;
/// import com.pulumi.random.IntegerArgs;
/// import com.pulumi.alicloud.pai.WorkspaceWorkspace;
/// import com.pulumi.alicloud.pai.WorkspaceWorkspaceArgs;
/// import com.pulumi.alicloud.pai.FlowPipeline;
/// import com.pulumi.alicloud.pai.FlowPipelineArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         final var config = ctx.config();
///         final var name = config.get("name").orElse("terraform_example");
///         final var default = AlicloudFunctions.getAccount(%!v(PANIC=Format method: runtime error: invalid memory address or nil pointer dereference);
///
///         var defaultInteger = new Integer("defaultInteger", IntegerArgs.builder()
///             .min(10000)
///             .max(99999)
///             .build());
///
///         var defaultWjQD1e = new WorkspaceWorkspace("defaultWjQD1e", WorkspaceWorkspaceArgs.builder()
///             .description(name)
///             .displayName(name)
///             .workspaceName(name)
///             .envTypes("dev")
///             .build());
///
///         var defaultFlowPipeline = new FlowPipeline("defaultFlowPipeline", FlowPipelineArgs.builder()
///             .workspaceId(defaultWjQD1e.id())
///             .manifest("""
/// apiVersion: \"core/v1\"
/// metadata:
///   provider: \"%s\"
///   version: \"v1\"
///   identifier: \"my_pipeline\"
///   name: \"source-transform\"
///   uuid: \"terraformuuid%s\"
///   annotations: {}
///   labels: {}
/// spec:
///   inputs:
///     artifacts: []
///     parameters:
///     - name: \"execution_maxcompute\"
///       type: \"Map\"
///       value:
///         spec:
///           endpoint: \"http://service.cn.maxcompute.aliyun-inc.com/api\"
///           odpsProject: \"test_i****\"
///   outputs:
///     artifacts: []
///     parameters: []
///   arguments:
///     artifacts: []
///     parameters: []
///   dependencies: []
///   initContainers: []
///   sideCarContainers: []
///   pipelines:
///   - apiVersion: \"core/v1\"
///     metadata:
///       provider: \"pai\"
///       version: \"v1\"
///       identifier: \"data_source\"
///       name: \"data-source\"
///       uuid: \"2ftahdnzcod2rt6u9q\"
///       displayName: \"读数据表-1\"
///       annotations: {}
///       labels: {}
///     spec:
///       inputs:
///         artifacts: []
///         parameters: []
///       outputs:
///         artifacts: []
///         parameters: []
///       arguments:
///         artifacts: []
///         parameters:
///         - name: \"inputTableName\"
///           value: \"pai_online_project.wumai_data\"
///         - name: \"execution\"
///           from: \"{{inputs.parameters.execution_maxcompute}}\"
///       dependencies: []
///       initContainers: []
///       sideCarContainers: []
///       pipelines: []
///       volumes: []
///   - apiVersion: \"core/v1\"
///     metadata:
///       provider: \"pai\"
///       version: \"v1\"
///       identifier: \"type_transform\"
///       name: \"type-transform\"
///       uuid: \"gacnnnl4ksvbabfh6l\"
///       displayName: \"类型转换-1\"
///       annotations: {}
///       labels: {}
///     spec:
///       inputs:
///         artifacts: []
///         parameters: []
///       outputs:
///         artifacts: []
///         parameters: []
///       arguments:
///         artifacts:
///         - name: \"inputTable\"
///           from: \"{{pipelines.data_source.outputs.artifacts.outputTable}}\"
///         parameters:
///         - name: \"cols_to_double\"
///           value: \"time,hour,pm2,pm10,so2,co,no2\"
///         - name: \"execution\"
///           from: \"{{inputs.parameters.execution_maxcompute}}\"
///       dependencies:
///       - \"data_source\"
///       initContainers: []
///       sideCarContainers: []
///       pipelines: []
///       volumes: []
///   volumes: []
/// ", default_.id(),defaultInteger.result()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// configuration:
///   name:
///     type: string
///     default: terraform_example
/// resources:
///   defaultInteger:
///     type: random:Integer
///     name: default
///     properties:
///       min: 10000
///       max: 99999
///   defaultWjQD1e:
///     type: alicloud:pai:WorkspaceWorkspace
///     properties:
///       description: ${name}
///       displayName: ${name}
///       workspaceName: ${name}
///       envTypes:
///         - dev
///   defaultFlowPipeline:
///     type: alicloud:pai:FlowPipeline
///     name: default
///     properties:
///       workspaceId: ${defaultWjQD1e.id}
///       manifest: |
///         apiVersion: \"core/v1\"
///         metadata:
///           provider: \"${default.id}\"
///           version: \"v1\"
///           identifier: \"my_pipeline\"
///           name: \"source-transform\"
///           uuid: \"terraformuuid${defaultInteger.result}\"
///           annotations: {}
///           labels: {}
///         spec:
///           inputs:
///             artifacts: []
///             parameters:
///             - name: \"execution_maxcompute\"
///               type: \"Map\"
///               value:
///                 spec:
///                   endpoint: \"http://service.cn.maxcompute.aliyun-inc.com/api\"
///                   odpsProject: \"test_i****\"
///           outputs:
///             artifacts: []
///             parameters: []
///           arguments:
///             artifacts: []
///             parameters: []
///           dependencies: []
///           initContainers: []
///           sideCarContainers: []
///           pipelines:
///           - apiVersion: \"core/v1\"
///             metadata:
///               provider: \"pai\"
///               version: \"v1\"
///               identifier: \"data_source\"
///               name: \"data-source\"
///               uuid: \"2ftahdnzcod2rt6u9q\"
///               displayName: \"读数据表-1\"
///               annotations: {}
///               labels: {}
///             spec:
///               inputs:
///                 artifacts: []
///                 parameters: []
///               outputs:
///                 artifacts: []
///                 parameters: []
///               arguments:
///                 artifacts: []
///                 parameters:
///                 - name: \"inputTableName\"
///                   value: \"pai_online_project.wumai_data\"
///                 - name: \"execution\"
///                   from: \"{{inputs.parameters.execution_maxcompute}}\"
///               dependencies: []
///               initContainers: []
///               sideCarContainers: []
///               pipelines: []
///               volumes: []
///           - apiVersion: \"core/v1\"
///             metadata:
///               provider: \"pai\"
///               version: \"v1\"
///               identifier: \"type_transform\"
///               name: \"type-transform\"
///               uuid: \"gacnnnl4ksvbabfh6l\"
///               displayName: \"类型转换-1\"
///               annotations: {}
///               labels: {}
///             spec:
///               inputs:
///                 artifacts: []
///                 parameters: []
///               outputs:
///                 artifacts: []
///                 parameters: []
///               arguments:
///                 artifacts:
///                 - name: \"inputTable\"
///                   from: \"{{pipelines.data_source.outputs.artifacts.outputTable}}\"
///                 parameters:
///                 - name: \"cols_to_double\"
///                   value: \"time,hour,pm2,pm10,so2,co,no2\"
///                 - name: \"execution\"
///                   from: \"{{inputs.parameters.execution_maxcompute}}\"
///               dependencies:
///               - \"data_source\"
///               initContainers: []
///               sideCarContainers: []
///               pipelines: []
///               volumes: []
///           volumes: []
/// variables:
///   default:
///     fn::invoke:
///       function: alicloud:getAccount
///       arguments: {}
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Pai Flow Pipeline can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:pai/flowPipeline:FlowPipeline example <id>
/// ```
class FlowPipeline extends pulumi.CustomResource {
  /// The creation time of the resource.
  late final pulumi.Output<String> createTime;

  /// The pipeline definition. For more information, see the sample pipeline definition).
  late final pulumi.Output<String> manifest;

  /// The ID of the workspace.
  late final pulumi.Output<String> workspaceId;

  /// Creates a new [FlowPipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [FlowPipeline]. {@macro pulumi_pai_flow_pipeline_flow_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  FlowPipeline(
    String name, {
    FlowPipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:pai/flowPipeline:FlowPipeline',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    manifest = registerOutput<String>('manifest');
    workspaceId = registerOutput<String>('workspaceId');
  }

  /// Gets an existing [FlowPipeline] resource's state with the given [name] and [id].
  static FlowPipeline get(
    String name,
    pulumi.Input<String> id, {
    FlowPipelineState? state,
  }) {
    return FlowPipeline._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  FlowPipeline._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'alicloud:pai/flowPipeline:FlowPipeline',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createTime = registerOutput<String>('createTime');
    manifest = registerOutput<String>('manifest');
    workspaceId = registerOutput<String>('workspaceId');
  }
}
