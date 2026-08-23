import 'package:pulumi/pulumi.dart' as pulumi;
import 'use_case_for_model_access_args.dart';
import 'use_case_for_model_access_state.dart';

/// Manages an AWS Bedrock Use Case For Model Access.
///
/// **This is an advanced resource** and has special caveats to be aware of when using it. Please read this document in its entirety before using this resource.
///
/// The `aws.bedrock.UseCaseForModelAccess` resource behaves differently from normal resources in that if an Use Case For Model Access already exists, Terraform does not _create_ this resource, but instead "adopts" it into management if it is the same. As the ability to update doesn't exist, changes compared to the existing resource generate an error.
/// If no Use Case For Model Access exists, Terraform creates a new Use Case For Model Access.
/// By default, `terraform destroy` does not delete the Use Case For Model Access but does remove the resource from Terraform state. Real deletion does not exist for this resource.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.UseCaseForModelAccess("example", {formData: JSON.stringify({
///     companyName: "AWS Provider",
///     companyWebsite: "https://www.test.com",
///     intendedUsers: "0",
///     industryOption: "Energy",
///     otherIndustryOption: "",
///     useCases: `. - Generating developer documentation
/// - Code generation/refactoring
/// - Summarization of issues / documents`,
/// })});
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.bedrock.UseCaseForModelAccess("example", form_data=json.dumps({
///     "companyName": "AWS Provider",
///     "companyWebsite": "https://www.test.com",
///     "intendedUsers": "0",
///     "industryOption": "Energy",
///     "otherIndustryOption": "",
///     "useCases": """. - Generating developer documentation
/// - Code generation/refactoring
/// - Summarization of issues / documents""",
/// }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Bedrock.UseCaseForModelAccess("example", new()
///     {
///         FormData = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["companyName"] = "AWS Provider",
///             ["companyWebsite"] = "https://www.test.com",
///             ["intendedUsers"] = "0",
///             ["industryOption"] = "Energy",
///             ["otherIndustryOption"] = "",
///             ["useCases"] = @". - Generating developer documentation
/// - Code generation/refactoring
/// - Summarization of issues / documents",
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"companyName":         "AWS Provider",
/// 			"companyWebsite":      "https://www.test.com",
/// 			"intendedUsers":       "0",
/// 			"industryOption":      "Energy",
/// 			"otherIndustryOption": "",
/// 			"useCases":            ". - Generating developer documentation\n- Code generation/refactoring\n- Summarization of issues / documents",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = bedrock.NewUseCaseForModelAccess(ctx, "example", &bedrock.UseCaseForModelAccessArgs{
/// 			FormData: pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_bedrock_usecaseformodelaccess" "example" {
///   form_data = jsonencode({
///     "companyName"         = "AWS Provider"
///     "companyWebsite"      = "https://www.test.com"
///     "intendedUsers"       = "0"
///     "industryOption"      = "Energy"
///     "otherIndustryOption" = ""
///     "useCases"            = ". - Generating developer documentation\n- Code generation/refactoring\n- Summarization of issues / documents"
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.UseCaseForModelAccess;
/// import com.pulumi.aws.bedrock.UseCaseForModelAccessArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new UseCaseForModelAccess("example", UseCaseForModelAccessArgs.builder()
///             .formData(serializeJson(
///                 jsonObject(
///                     jsonProperty("companyName", "AWS Provider"),
///                     jsonProperty("companyWebsite", "https://www.test.com"),
///                     jsonProperty("intendedUsers", "0"),
///                     jsonProperty("industryOption", "Energy"),
///                     jsonProperty("otherIndustryOption", ""),
///                     jsonProperty("useCases", """
/// . - Generating developer documentation
/// - Code generation/refactoring
/// - Summarization of issues / documents                    """)
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:UseCaseForModelAccess
///     properties:
///       formData:
///         fn::toJSON:
///           companyName: AWS Provider
///           companyWebsite: https://www.test.com
///           intendedUsers: '0'
///           industryOption: Energy
///           otherIndustryOption: ""
///           useCases: |-
///             . - Generating developer documentation
///             - Code generation/refactoring
///             - Summarization of issues / documents
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import AWS Bedrock Use Case For Model Access resources using the AWS account ID. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/useCaseForModelAccess:UseCaseForModelAccess example 123456789012
/// ```
class UseCaseForModelAccess extends pulumi.CustomResource {
  /// Form data from the Anthropic first time user request. See also the example [payload](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_PutUseCaseForModelAccess.html#API_PutUseCaseForModelAccess_Examples).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> formData;

  /// Creates a new [UseCaseForModelAccess].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [UseCaseForModelAccess]. {@macro pulumi_bedrock_use_case_for_model_access_use_case_for_model_access_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  UseCaseForModelAccess(
    String name, {
    UseCaseForModelAccessArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/useCaseForModelAccess:UseCaseForModelAccess',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    formData = registerOutput<String>('formData');
  }

  /// Gets an existing [UseCaseForModelAccess] resource's state with the given [name] and [id].
  static UseCaseForModelAccess get(
    String name,
    pulumi.Input<String> id, {
    UseCaseForModelAccessState? state,
  }) {
    return UseCaseForModelAccess._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  UseCaseForModelAccess._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/useCaseForModelAccess:UseCaseForModelAccess',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    formData = registerOutput<String>('formData');
  }
}
