import 'package:pulumi/pulumi.dart' as pulumi;
import 'regional_parameter_args.dart';
import 'regional_parameter_policy_member.dart';

/// A Regional Parameter is a logical regional parameter.
///
///
/// To get more information about RegionalParameter, see:
///
/// * [API documentation](https://cloud.google.com/secret-manager/parameter-manager/docs/reference/rest/v1/projects.locations.parameters)
///
/// ## Example Usage
///
/// ### Regional Parameter Basic
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regional_parameter_basic = new gcp.parametermanager.RegionalParameter("regional-parameter-basic", {
///     parameterId: "regional_parameter",
///     location: "us-central1",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// regional_parameter_basic = gcp.parametermanager.RegionalParameter("regional-parameter-basic",
///     parameter_id="regional_parameter",
///     location="us-central1")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var regional_parameter_basic = new Gcp.ParameterManager.RegionalParameter("regional-parameter-basic", new()
///     {
///         ParameterId = "regional_parameter",
///         Location = "us-central1",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.NewRegionalParameter(ctx, "regional-parameter-basic", &parametermanager.RegionalParameterArgs{
/// 			ParameterId: pulumi.String("regional_parameter"),
/// 			Location:    pulumi.String("us-central1"),
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
/// import com.pulumi.gcp.parametermanager.RegionalParameter;
/// import com.pulumi.gcp.parametermanager.RegionalParameterArgs;
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
///         var regional_parameter_basic = new RegionalParameter("regional-parameter-basic", RegionalParameterArgs.builder()
///             .parameterId("regional_parameter")
///             .location("us-central1")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-parameter-basic:
///     type: gcp:parametermanager:RegionalParameter
///     properties:
///       parameterId: regional_parameter
///       location: us-central1
/// ```
///
/// ### Regional Parameter With Format
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regional_parameter_with_format = new gcp.parametermanager.RegionalParameter("regional-parameter-with-format", {
///     parameterId: "regional_parameter",
///     location: "us-central1",
///     format: "JSON",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// regional_parameter_with_format = gcp.parametermanager.RegionalParameter("regional-parameter-with-format",
///     parameter_id="regional_parameter",
///     location="us-central1",
///     format="JSON")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var regional_parameter_with_format = new Gcp.ParameterManager.RegionalParameter("regional-parameter-with-format", new()
///     {
///         ParameterId = "regional_parameter",
///         Location = "us-central1",
///         Format = "JSON",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.NewRegionalParameter(ctx, "regional-parameter-with-format", &parametermanager.RegionalParameterArgs{
/// 			ParameterId: pulumi.String("regional_parameter"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Format:      pulumi.String("JSON"),
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
/// import com.pulumi.gcp.parametermanager.RegionalParameter;
/// import com.pulumi.gcp.parametermanager.RegionalParameterArgs;
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
///         var regional_parameter_with_format = new RegionalParameter("regional-parameter-with-format", RegionalParameterArgs.builder()
///             .parameterId("regional_parameter")
///             .location("us-central1")
///             .format("JSON")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-parameter-with-format:
///     type: gcp:parametermanager:RegionalParameter
///     properties:
///       parameterId: regional_parameter
///       location: us-central1
///       format: JSON
/// ```
///
/// ### Regional Parameter With Labels
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const regional_parameter_with_labels = new gcp.parametermanager.RegionalParameter("regional-parameter-with-labels", {
///     parameterId: "regional_parameter",
///     location: "us-central1",
///     labels: {
///         key1: "val1",
///         key2: "val2",
///         key3: "val3",
///         key4: "val4",
///         key5: "val5",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// regional_parameter_with_labels = gcp.parametermanager.RegionalParameter("regional-parameter-with-labels",
///     parameter_id="regional_parameter",
///     location="us-central1",
///     labels={
///         "key1": "val1",
///         "key2": "val2",
///         "key3": "val3",
///         "key4": "val4",
///         "key5": "val5",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var regional_parameter_with_labels = new Gcp.ParameterManager.RegionalParameter("regional-parameter-with-labels", new()
///     {
///         ParameterId = "regional_parameter",
///         Location = "us-central1",
///         Labels =
///         {
///             { "key1", "val1" },
///             { "key2", "val2" },
///             { "key3", "val3" },
///             { "key4", "val4" },
///             { "key5", "val5" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := parametermanager.NewRegionalParameter(ctx, "regional-parameter-with-labels", &parametermanager.RegionalParameterArgs{
/// 			ParameterId: pulumi.String("regional_parameter"),
/// 			Location:    pulumi.String("us-central1"),
/// 			Labels: pulumi.StringMap{
/// 				"key1": pulumi.String("val1"),
/// 				"key2": pulumi.String("val2"),
/// 				"key3": pulumi.String("val3"),
/// 				"key4": pulumi.String("val4"),
/// 				"key5": pulumi.String("val5"),
/// 			},
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
/// import com.pulumi.gcp.parametermanager.RegionalParameter;
/// import com.pulumi.gcp.parametermanager.RegionalParameterArgs;
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
///         var regional_parameter_with_labels = new RegionalParameter("regional-parameter-with-labels", RegionalParameterArgs.builder()
///             .parameterId("regional_parameter")
///             .location("us-central1")
///             .labels(Map.ofEntries(
///                 Map.entry("key1", "val1"),
///                 Map.entry("key2", "val2"),
///                 Map.entry("key3", "val3"),
///                 Map.entry("key4", "val4"),
///                 Map.entry("key5", "val5")
///             ))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-parameter-with-labels:
///     type: gcp:parametermanager:RegionalParameter
///     properties:
///       parameterId: regional_parameter
///       location: us-central1
///       labels:
///         key1: val1
///         key2: val2
///         key3: val3
///         key4: val4
///         key5: val5
/// ```
///
/// ### Regional Parameter With Kms Key
///
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as gcp from "@pulumi/gcp";
///
/// const project = gcp.organizations.getProject({});
/// const regional_parameter_with_kms_key = new gcp.parametermanager.RegionalParameter("regional-parameter-with-kms-key", {
///     parameterId: "regional_parameter",
///     location: "us-central1",
///     kmsKey: "kms-key",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_gcp as gcp
///
/// project = gcp.organizations.get_project()
/// regional_parameter_with_kms_key = gcp.parametermanager.RegionalParameter("regional-parameter-with-kms-key",
///     parameter_id="regional_parameter",
///     location="us-central1",
///     kms_key="kms-key")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Gcp = Pulumi.Gcp;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var project = Gcp.Organizations.GetProject.Invoke();
///
///     var regional_parameter_with_kms_key = new Gcp.ParameterManager.RegionalParameter("regional-parameter-with-kms-key", new()
///     {
///         ParameterId = "regional_parameter",
///         Location = "us-central1",
///         KmsKey = "kms-key",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/organizations"
/// 	"github.com/pulumi/pulumi-gcp/sdk/v9/go/gcp/parametermanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.LookupProject(ctx, &organizations.LookupProjectArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = parametermanager.NewRegionalParameter(ctx, "regional-parameter-with-kms-key", &parametermanager.RegionalParameterArgs{
/// 			ParameterId: pulumi.String("regional_parameter"),
/// 			Location:    pulumi.String("us-central1"),
/// 			KmsKey:      pulumi.String("kms-key"),
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
/// import com.pulumi.gcp.organizations.OrganizationsFunctions;
/// import com.pulumi.gcp.organizations.inputs.GetProjectArgs;
/// import com.pulumi.gcp.parametermanager.RegionalParameter;
/// import com.pulumi.gcp.parametermanager.RegionalParameterArgs;
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
///         final var project = OrganizationsFunctions.getProject(GetProjectArgs.builder()
///             .build());
///
///         var regional_parameter_with_kms_key = new RegionalParameter("regional-parameter-with-kms-key", RegionalParameterArgs.builder()
///             .parameterId("regional_parameter")
///             .location("us-central1")
///             .kmsKey("kms-key")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   regional-parameter-with-kms-key:
///     type: gcp:parametermanager:RegionalParameter
///     properties:
///       parameterId: regional_parameter
///       location: us-central1
///       kmsKey: kms-key
/// variables:
///   project:
///     fn::invoke:
///       function: gcp:organizations:getProject
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// RegionalParameter can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}`
///
/// * `{{project}}/{{location}}/{{parameter_id}}`
///
/// * `{{location}}/{{parameter_id}}`
///
/// When using the `pulumi import` command, RegionalParameter can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:parametermanager/regionalParameter:RegionalParameter default projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:parametermanager/regionalParameter:RegionalParameter default {{project}}/{{location}}/{{parameter_id}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:parametermanager/regionalParameter:RegionalParameter default {{location}}/{{parameter_id}}
/// ```
class RegionalParameter extends pulumi.CustomResource {
  /// The time at which the regional Parameter was created.
  late final pulumi.Output<String> createTime;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// The format type of the regional parameter.
  /// Default value is `UNFORMATTED`.
  /// Possible values are: `UNFORMATTED`, `YAML`, `JSON`.
  late final pulumi.Output<String?> format;

  /// The resource name of the Cloud KMS CryptoKey used to encrypt regional parameter version payload. Format
  /// `projects/{{project}}/locations/{{location}}/keyRings/{{key_ring}}/cryptoKeys/{{crypto_key}}`
  late final pulumi.Output<String?> kmsKey;

  /// The labels assigned to this regional Parameter.
  /// Label keys must be between 1 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}][\p{Ll}\p{Lo}\p{N}_-]{0,62}
  /// Label values must be between 0 and 63 characters long, have a UTF-8 encoding of maximum 128 bytes,
  /// and must conform to the following PCRE regular expression: [\p{Ll}\p{Lo}\p{N}_-]{0,63}
  /// No more than 64 labels can be assigned to a given resource.
  /// An object containing a list of "key": value pairs. Example:
  /// { "name": "wrench", "mass": "1.3kg", "count": "3" }.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// The location of the regional parameter. eg us-central1
  late final pulumi.Output<String> location;

  /// The resource name of the regional Parameter. Format:
  /// `projects/{{project}}/locations/{{location}}/parameters/{{parameter_id}}`
  late final pulumi.Output<String> name;

  /// This must be unique within the project.
  late final pulumi.Output<String> parameterId;

  /// An object containing a unique resource identity tied to the regional parameter.
  /// Structure is documented below.
  late final pulumi.Output<List<RegionalParameterPolicyMember>> policyMembers;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The time at which the regional Parameter was updated.
  late final pulumi.Output<String> updateTime;

  /// Creates a new [RegionalParameter].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RegionalParameter]. {@macro pulumi_parametermanager_regional_parameter_regional_parameter_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RegionalParameter(
    String name, {
    RegionalParameterArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'gcp:parametermanager/regionalParameter:RegionalParameter',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.createTime = registerOutput<String>('createTime');
    this.effectiveLabels = registerOutput<Map<String, String>>(
      'effectiveLabels',
    );
    this.format = registerOutput<String?>('format');
    this.kmsKey = registerOutput<String?>('kmsKey');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.parameterId = registerOutput<String>('parameterId');
    this.policyMembers = registerOutput<List<RegionalParameterPolicyMember>>(
      'policyMembers',
    );
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
