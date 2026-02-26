import 'package:pulumi/pulumi.dart';
import 'parameter_version_args.dart';

/// A Parameter Version resource that stores the actual value of the parameter.
///
///
/// To get more information about ParameterVersion, see:
///
/// * [API documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters.versions)
///
///
///
/// ## Example Usage
///
/// ### Parameter Version Basic
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const parameter_basic = new gcp.parametermanager.Parameter("parameter-basic", {parameterId: "parameter"});
/// const parameter_version_basic = new gcp.parametermanager.ParameterVersion("parameter-version-basic", {
/// parameter: parameter_basic.id,
/// parameterVersionId: "parameter_version",
/// parameterData: "app-parameter-version-data",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// parameter_basic = gcp.parametermanager.Parameter("parameter-basic", parameter_id="parameter")
/// parameter_version_basic = gcp.parametermanager.ParameterVersion("parameter-version-basic",
/// parameter=parameter_basic.id,
/// parameter_version_id="parameter_version",
/// parameter_data="app-parameter-version-data")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var parameter_basic = new Gcp.ParameterManager.Parameter("parameter-basic", new()
/// {
/// ParameterId = "parameter",
/// });
///
/// var parameter_version_basic = new Gcp.ParameterManager.ParameterVersion("parameter-version-basic", new()
/// {
/// Parameter = parameter_basic.Id,
/// ParameterVersionId = "parameter_version",
/// ParameterData = "app-parameter-version-data",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// parameter_basic, err := parametermanager.NewParameter(ctx, "parameter-basic", &parametermanager.ParameterArgs{
/// ParameterId: pulumi.String("parameter"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = parametermanager.NewParameterVersion(ctx, "parameter-version-basic", &parametermanager.ParameterVersionArgs{
/// Parameter:          parameter_basic.ID(),
/// ParameterVersionId: pulumi.String("parameter_version"),
/// ParameterData:      pulumi.String("app-parameter-version-data"),
/// })
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
/// import com.pulumi.gcp.parametermanager.Parameter;
/// import com.pulumi.gcp.parametermanager.ParameterArgs;
/// import com.pulumi.gcp.parametermanager.ParameterVersion;
/// import com.pulumi.gcp.parametermanager.ParameterVersionArgs;
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
/// var parameter_basic = new Parameter("parameter-basic", ParameterArgs.builder()
/// .parameterId("parameter")
/// .build());
///
/// var parameter_version_basic = new ParameterVersion("parameter-version-basic", ParameterVersionArgs.builder()
/// .parameter(parameter_basic.id())
/// .parameterVersionId("parameter_version")
/// .parameterData("app-parameter-version-data")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// parameter-basic:
/// type: gcp:parametermanager:Parameter
/// properties:
/// parameterId: parameter
/// parameter-version-basic:
/// type: gcp:parametermanager:ParameterVersion
/// properties:
/// parameter: ${["parameter-basic"].id}
/// parameterVersionId: parameter_version
/// parameterData: app-parameter-version-data
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Parameter Version With Json Format
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const parameter_basic = new gcp.parametermanager.Parameter("parameter-basic", {
/// parameterId: "parameter",
/// format: "JSON",
/// });
/// const parameter_version_with_json_format = new gcp.parametermanager.ParameterVersion("parameter-version-with-json-format", {
/// parameter: parameter_basic.id,
/// parameterVersionId: "parameter_version",
/// parameterData: JSON.stringify({
/// key1: "val1",
/// key2: "val2",
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_gcp as gcp
///
/// parameter_basic = gcp.parametermanager.Parameter("parameter-basic",
/// parameter_id="parameter",
/// format="JSON")
/// parameter_version_with_json_format = gcp.parametermanager.ParameterVersion("parameter-version-with-json-format",
/// parameter=parameter_basic.id,
/// parameter_version_id="parameter_version",
/// parameter_data=json.dumps({
/// "key1": "val1",
/// "key2": "val2",
/// }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var parameter_basic = new Gcp.ParameterManager.Parameter("parameter-basic", new()
/// {
/// ParameterId = "parameter",
/// Format = "JSON",
/// });
///
/// var parameter_version_with_json_format = new Gcp.ParameterManager.ParameterVersion("parameter-version-with-json-format", new()
/// {
/// Parameter = parameter_basic.Id,
/// ParameterVersionId = "parameter_version",
/// ParameterData = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["key1"] = "val1",
/// ["key2"] = "val2",
/// }),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// parameter_basic, err := parametermanager.NewParameter(ctx, "parameter-basic", &parametermanager.ParameterArgs{
/// ParameterId: pulumi.String("parameter"),
/// Format:      pulumi.String("JSON"),
/// })
/// if err != nil {
/// return err
/// }
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "key1": "val1",
/// "key2": "val2",
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = parametermanager.NewParameterVersion(ctx, "parameter-version-with-json-format", &parametermanager.ParameterVersionArgs{
/// Parameter:          parameter_basic.ID(),
/// ParameterVersionId: pulumi.String("parameter_version"),
/// ParameterData:      pulumi.String(json0),
/// })
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
/// import com.pulumi.gcp.parametermanager.Parameter;
/// import com.pulumi.gcp.parametermanager.ParameterArgs;
/// import com.pulumi.gcp.parametermanager.ParameterVersion;
/// import com.pulumi.gcp.parametermanager.ParameterVersionArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var parameter_basic = new Parameter("parameter-basic", ParameterArgs.builder()
/// .parameterId("parameter")
/// .format("JSON")
/// .build());
///
/// var parameter_version_with_json_format = new ParameterVersion("parameter-version-with-json-format", ParameterVersionArgs.builder()
/// .parameter(parameter_basic.id())
/// .parameterVersionId("parameter_version")
/// .parameterData(serializeJson(
/// jsonObject(
/// jsonProperty("key1", "val1"),
/// jsonProperty("key2", "val2")
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// parameter-basic:
/// type: gcp:parametermanager:Parameter
/// properties:
/// parameterId: parameter
/// format: JSON
/// parameter-version-with-json-format:
/// type: gcp:parametermanager:ParameterVersion
/// properties:
/// parameter: ${["parameter-basic"].id}
/// parameterVersionId: parameter_version
/// parameterData:
/// fn::toJSON:
/// key1: val1
/// key2: val2
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Parameter Version With Kms Key
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const parameter_basic = new gcp.parametermanager.Parameter("parameter-basic", {
/// parameterId: "parameter",
/// kmsKey: "kms-key",
/// });
/// const parameter_version_with_kms_key = new gcp.parametermanager.ParameterVersion("parameter-version-with-kms-key", {
/// parameter: parameter_basic.id,
/// parameterVersionId: "parameter_version",
/// parameterData: "app-parameter-version-data",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// parameter_basic = gcp.parametermanager.Parameter("parameter-basic",
/// parameter_id="parameter",
/// kms_key="kms-key")
/// parameter_version_with_kms_key = gcp.parametermanager.ParameterVersion("parameter-version-with-kms-key",
/// parameter=parameter_basic.id,
/// parameter_version_id="parameter_version",
/// parameter_data="app-parameter-version-data")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var project = Gcp.Organizations.GetProject.Invoke();
///
/// var parameter_basic = new Gcp.ParameterManager.Parameter("parameter-basic", new()
/// {
/// ParameterId = "parameter",
/// KmsKey = "kms-key",
/// });
///
/// var parameter_version_with_kms_key = new Gcp.ParameterManager.ParameterVersion("parameter-version-with-kms-key", new()
/// {
/// Parameter = parameter_basic.Id,
/// ParameterVersionId = "parameter_version",
/// ParameterData = "app-parameter-version-data",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// parameter_basic, err := parametermanager.NewParameter(ctx, "parameter-basic", &parametermanager.ParameterArgs{
/// ParameterId: pulumi.String("parameter"),
/// KmsKey:      pulumi.String("kms-key"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = parametermanager.NewParameterVersion(ctx, "parameter-version-with-kms-key", &parametermanager.ParameterVersionArgs{
/// Parameter:          parameter_basic.ID(),
/// ParameterVersionId: pulumi.String("parameter_version"),
/// ParameterData:      pulumi.String("app-parameter-version-data"),
/// })
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.parametermanager.Parameter;
/// import com.pulumi.gcp.parametermanager.ParameterArgs;
/// import com.pulumi.gcp.parametermanager.ParameterVersion;
/// import com.pulumi.gcp.parametermanager.ParameterVersionArgs;
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
/// final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
/// .build());
///
/// var parameter_basic = new Parameter("parameter-basic", ParameterArgs.builder()
/// .parameterId("parameter")
/// .kmsKey("kms-key")
/// .build());
///
/// var parameter_version_with_kms_key = new ParameterVersion("parameter-version-with-kms-key", ParameterVersionArgs.builder()
/// .parameter(parameter_basic.id())
/// .parameterVersionId("parameter_version")
/// .parameterData("app-parameter-version-data")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// parameter-basic:
/// type: gcp:parametermanager:Parameter
/// properties:
/// parameterId: parameter
/// kmsKey: kms-key
/// parameter-version-with-kms-key:
/// type: gcp:parametermanager:ParameterVersion
/// properties:
/// parameter: ${["parameter-basic"].id}
/// parameterVersionId: parameter_version
/// parameterData: app-parameter-version-data
/// variables:
/// project:
/// fn::invoke:
/// function: gcp:organizations:getProject
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Parameter Version With Json Format With File
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const parameter_basic = new gcp.parametermanager.Parameter("parameter-basic", {
/// parameterId: "parameter",
/// format: "JSON",
/// });
/// const parameter_version_with_json_format_with_file = new gcp.parametermanager.ParameterVersion("parameter-version-with-json-format-with-file", {
/// parameter: parameter_basic.id,
/// parameterVersionId: "parameter_version",
/// parameterData: std.file({
/// input: "parameter-json-data.json",
/// }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// parameter_basic = gcp.parametermanager.Parameter("parameter-basic",
/// parameter_id="parameter",
/// format="JSON")
/// parameter_version_with_json_format_with_file = gcp.parametermanager.ParameterVersion("parameter-version-with-json-format-with-file",
/// parameter=parameter_basic.id,
/// parameter_version_id="parameter_version",
/// parameter_data=std.file(input="parameter-json-data.json").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var parameter_basic = new Gcp.ParameterManager.Parameter("parameter-basic", new()
/// {
/// ParameterId = "parameter",
/// Format = "JSON",
/// });
///
/// var parameter_version_with_json_format_with_file = new Gcp.ParameterManager.ParameterVersion("parameter-version-with-json-format-with-file", new()
/// {
/// Parameter = parameter_basic.Id,
/// ParameterVersionId = "parameter_version",
/// ParameterData = Std.File.Invoke(new()
/// {
/// Input = "parameter-json-data.json",
/// }).Apply(invoke => invoke.Result),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// parameter_basic, err := parametermanager.NewParameter(ctx, "parameter-basic", &parametermanager.ParameterArgs{
/// ParameterId: pulumi.String("parameter"),
/// Format:      pulumi.String("JSON"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "parameter-json-data.json",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = parametermanager.NewParameterVersion(ctx, "parameter-version-with-json-format-with-file", &parametermanager.ParameterVersionArgs{
/// Parameter:          parameter_basic.ID(),
/// ParameterVersionId: pulumi.String("parameter_version"),
/// ParameterData:      pulumi.String(invokeFile.Result),
/// })
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
/// import com.pulumi.gcp.parametermanager.Parameter;
/// import com.pulumi.gcp.parametermanager.ParameterArgs;
/// import com.pulumi.gcp.parametermanager.ParameterVersion;
/// import com.pulumi.gcp.parametermanager.ParameterVersionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
/// var parameter_basic = new Parameter("parameter-basic", ParameterArgs.builder()
/// .parameterId("parameter")
/// .format("JSON")
/// .build());
///
/// var parameter_version_with_json_format_with_file = new ParameterVersion("parameter-version-with-json-format-with-file", ParameterVersionArgs.builder()
/// .parameter(parameter_basic.id())
/// .parameterVersionId("parameter_version")
/// .parameterData(StdFunctions.file(FileArgs.builder()
/// .input("parameter-json-data.json")
/// .build()).result())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// parameter-basic:
/// type: gcp:parametermanager:Parameter
/// properties:
/// parameterId: parameter
/// format: JSON
/// parameter-version-with-json-format-with-file:
/// type: gcp:parametermanager:ParameterVersion
/// properties:
/// parameter: ${["parameter-basic"].id}
/// parameterVersionId: parameter_version
/// parameterData:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: parameter-json-data.json
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
/// ### Parameter Version With Yaml Format With File
///
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
/// import * as std from "@pulumi/std";
///
/// const parameter_basic = new gcp.parametermanager.Parameter("parameter-basic", {
/// parameterId: "parameter",
/// format: "YAML",
/// });
/// const parameter_version_with_yaml_format_with_file = new gcp.parametermanager.ParameterVersion("parameter-version-with-yaml-format-with-file", {
/// parameter: parameter_basic.id,
/// parameterVersionId: "parameter_version",
/// parameterData: std.file({
/// input: "parameter-yaml-data.yaml",
/// }).then(invoke => invoke.result),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
/// import pulumi_std as std
///
/// parameter_basic = gcp.parametermanager.Parameter("parameter-basic",
/// parameter_id="parameter",
/// format="YAML")
/// parameter_version_with_yaml_format_with_file = gcp.parametermanager.ParameterVersion("parameter-version-with-yaml-format-with-file",
/// parameter=parameter_basic.id,
/// parameter_version_id="parameter_version",
/// parameter_data=std.file(input="parameter-yaml-data.yaml").result)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var parameter_basic = new Gcp.ParameterManager.Parameter("parameter-basic", new()
/// {
/// ParameterId = "parameter",
/// Format = "YAML",
/// });
///
/// var parameter_version_with_yaml_format_with_file = new Gcp.ParameterManager.ParameterVersion("parameter-version-with-yaml-format-with-file", new()
/// {
/// Parameter = parameter_basic.Id,
/// ParameterVersionId = "parameter_version",
/// ParameterData = Std.File.Invoke(new()
/// {
/// Input = "parameter-yaml-data.yaml",
/// }).Apply(invoke => invoke.Result),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// "github.com/pulumi/pulumi-std/sdk/go/std"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// parameter_basic, err := parametermanager.NewParameter(ctx, "parameter-basic", &parametermanager.ParameterArgs{
/// ParameterId: pulumi.String("parameter"),
/// Format:      pulumi.String("YAML"),
/// })
/// if err != nil {
/// return err
/// }
/// invokeFile, err := std.File(ctx, &std.FileArgs{
/// Input: "parameter-yaml-data.yaml",
/// }, nil)
/// if err != nil {
/// return err
/// }
/// _, err = parametermanager.NewParameterVersion(ctx, "parameter-version-with-yaml-format-with-file", &parametermanager.ParameterVersionArgs{
/// Parameter:          parameter_basic.ID(),
/// ParameterVersionId: pulumi.String("parameter_version"),
/// ParameterData:      pulumi.String(invokeFile.Result),
/// })
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
/// import com.pulumi.gcp.parametermanager.Parameter;
/// import com.pulumi.gcp.parametermanager.ParameterArgs;
/// import com.pulumi.gcp.parametermanager.ParameterVersion;
/// import com.pulumi.gcp.parametermanager.ParameterVersionArgs;
/// import com.pulumi.std.StdFunctions;
/// import com.pulumi.std.inputs.FileArgs;
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
/// var parameter_basic = new Parameter("parameter-basic", ParameterArgs.builder()
/// .parameterId("parameter")
/// .format("YAML")
/// .build());
///
/// var parameter_version_with_yaml_format_with_file = new ParameterVersion("parameter-version-with-yaml-format-with-file", ParameterVersionArgs.builder()
/// .parameter(parameter_basic.id())
/// .parameterVersionId("parameter_version")
/// .parameterData(StdFunctions.file(FileArgs.builder()
/// .input("parameter-yaml-data.yaml")
/// .build()).result())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// parameter-basic:
/// type: gcp:parametermanager:Parameter
/// properties:
/// parameterId: parameter
/// format: YAML
/// parameter-version-with-yaml-format-with-file:
/// type: gcp:parametermanager:ParameterVersion
/// properties:
/// parameter: ${["parameter-basic"].id}
/// parameterVersionId: parameter_version
/// parameterData:
/// fn::invoke:
/// function: std:file
/// arguments:
/// input: parameter-yaml-data.yaml
/// return: result
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ParameterVersion can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/global/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
///
/// When using the `pulumi import` command, ParameterVersion can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:parametermanager/parameterVersion:ParameterVersion default projects/{{project}}/locations/global/parameters/{{parameter_id}}/versions/{{parameter_version_id}}
/// ```
class ParameterVersion extends CustomResource {
  /// The time at which the Parameter Version was created.
  late final Output<String> createTime;

  /// The current state of Parameter Version. This field is only applicable for updating Parameter Version.
  late final Output<bool?> disabled;

  /// The resource name of the Cloud KMS CryptoKeyVersion used to decrypt parameter version payload. Format
  /// `projects/{{project}}/locations/global/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}/cryptoKeyVersions/{{crypto_key_version}}`
  late final Output<String> kmsKeyVersion;

  /// The resource name of the Parameter Version. Format:
  /// `projects/{{project}}/locations/global/parameters/{{parameter_id}}/versions/{{parameter_version_id}}`
  late final Output<String> name;

  /// Parameter Manager Parameter resource.
  late final Output<String> parameter;

  /// The Parameter data.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  late final Output<String> parameterData;

  /// Version ID of the Parameter Version Resource. This must be unique within the Parameter.
  late final Output<String> parameterVersionId;

  /// The time at which the Parameter Version was updated.
  late final Output<String> updateTime;

  ParameterVersion(
    String name, {
    ParameterVersionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:parametermanager/parameterVersion:ParameterVersion',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.disabled = registerOutput<bool?>('disabled');
    this.kmsKeyVersion = registerOutput<String>('kmsKeyVersion');
    this.name = registerOutput<String>('name');
    this.parameter = registerOutput<String>('parameter');
    this.parameterData = registerOutput<String>('parameterData');
    this.parameterVersionId = registerOutput<String>('parameterVersionId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
