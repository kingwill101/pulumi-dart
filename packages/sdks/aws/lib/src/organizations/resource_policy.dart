import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_policy_args.dart';
import 'resource_policy_state.dart';

/// Provides a resource to manage a resource-based delegation policy that can be used to delegate policy management for AWS Organizations to specified member accounts to perform policy actions that are by default available only to the management account. See the [_AWS Organizations User Guide_](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_delegate_policies.html) for more information.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.organizations.ResourcePolicy("example", {content: `{
///   \\"Version\\": \\"2012-10-17\\",
///   \\"Statement\\": [
///     {
///       \\"Sid\\": \\"DelegatingNecessaryDescribeListActions\\",
///       \\"Effect\\": \\"Allow\\",
///       \\"Principal\\": {
///         \\"AWS\\": \\"arn:aws:iam::123456789012:root\\"
///       },
///       \\"Action\\": [
///         \\"organizations:DescribeOrganization\\",
///         \\"organizations:DescribeOrganizationalUnit\\",
///         \\"organizations:DescribeAccount\\",
///         \\"organizations:DescribePolicy\\",
///         \\"organizations:DescribeEffectivePolicy\\",
///         \\"organizations:ListRoots\\",
///         \\"organizations:ListOrganizationalUnitsForParent\\",
///         \\"organizations:ListParents\\",
///         \\"organizations:ListChildren\\",
///         \\"organizations:ListAccounts\\",
///         \\"organizations:ListAccountsForParent\\",
///         \\"organizations:ListPolicies\\",
///         \\"organizations:ListPoliciesForTarget\\",
///         \\"organizations:ListTargetsForPolicy\\",
///         \\"organizations:ListTagsForResource\\"
///       ],
///       \\"Resource\\": \\"*\\"
///     }
///   ]
/// }
/// `});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.ResourcePolicy("example", content="""{
///   \"Version\": \"2012-10-17\",
///   \"Statement\": [
///     {
///       \"Sid\": \"DelegatingNecessaryDescribeListActions\",
///       \"Effect\": \"Allow\",
///       \"Principal\": {
///         \"AWS\": \"arn:aws:iam::123456789012:root\"
///       },
///       \"Action\": [
///         \"organizations:DescribeOrganization\",
///         \"organizations:DescribeOrganizationalUnit\",
///         \"organizations:DescribeAccount\",
///         \"organizations:DescribePolicy\",
///         \"organizations:DescribeEffectivePolicy\",
///         \"organizations:ListRoots\",
///         \"organizations:ListOrganizationalUnitsForParent\",
///         \"organizations:ListParents\",
///         \"organizations:ListChildren\",
///         \"organizations:ListAccounts\",
///         \"organizations:ListAccountsForParent\",
///         \"organizations:ListPolicies\",
///         \"organizations:ListPoliciesForTarget\",
///         \"organizations:ListTargetsForPolicy\",
///         \"organizations:ListTagsForResource\"
///       ],
///       \"Resource\": \"*\"
///     }
///   ]
/// }
/// """)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Organizations.ResourcePolicy("example", new()
///     {
///         Content = @"{
///   \""Version\"": \""2012-10-17\"",
///   \""Statement\"": [
///     {
///       \""Sid\"": \""DelegatingNecessaryDescribeListActions\"",
///       \""Effect\"": \""Allow\"",
///       \""Principal\"": {
///         \""AWS\"": \""arn:aws:iam::123456789012:root\""
///       },
///       \""Action\"": [
///         \""organizations:DescribeOrganization\"",
///         \""organizations:DescribeOrganizationalUnit\"",
///         \""organizations:DescribeAccount\"",
///         \""organizations:DescribePolicy\"",
///         \""organizations:DescribeEffectivePolicy\"",
///         \""organizations:ListRoots\"",
///         \""organizations:ListOrganizationalUnitsForParent\"",
///         \""organizations:ListParents\"",
///         \""organizations:ListChildren\"",
///         \""organizations:ListAccounts\"",
///         \""organizations:ListAccountsForParent\"",
///         \""organizations:ListPolicies\"",
///         \""organizations:ListPoliciesForTarget\"",
///         \""organizations:ListTargetsForPolicy\"",
///         \""organizations:ListTagsForResource\""
///       ],
///       \""Resource\"": \""*\""
///     }
///   ]
/// }
/// ",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := organizations.NewResourcePolicy(ctx, "example", &organizations.ResourcePolicyArgs{
/// 			Content: pulumi.String(`{
///   \"Version\": \"2012-10-17\",
///   \"Statement\": [
///     {
///       \"Sid\": \"DelegatingNecessaryDescribeListActions\",
///       \"Effect\": \"Allow\",
///       \"Principal\": {
///         \"AWS\": \"arn:aws:iam::123456789012:root\"
///       },
///       \"Action\": [
///         \"organizations:DescribeOrganization\",
///         \"organizations:DescribeOrganizationalUnit\",
///         \"organizations:DescribeAccount\",
///         \"organizations:DescribePolicy\",
///         \"organizations:DescribeEffectivePolicy\",
///         \"organizations:ListRoots\",
///         \"organizations:ListOrganizationalUnitsForParent\",
///         \"organizations:ListParents\",
///         \"organizations:ListChildren\",
///         \"organizations:ListAccounts\",
///         \"organizations:ListAccountsForParent\",
///         \"organizations:ListPolicies\",
///         \"organizations:ListPoliciesForTarget\",
///         \"organizations:ListTargetsForPolicy\",
///         \"organizations:ListTagsForResource\"
///       ],
///       \"Resource\": \"*\"
///     }
///   ]
/// }
/// `),
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
/// import com.pulumi.aws.organizations.ResourcePolicy;
/// import com.pulumi.aws.organizations.ResourcePolicyArgs;
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
///         var example = new ResourcePolicy("example", ResourcePolicyArgs.builder()
///             .content("""
/// {
///   \"Version\": \"2012-10-17\",
///   \"Statement\": [
///     {
///       \"Sid\": \"DelegatingNecessaryDescribeListActions\",
///       \"Effect\": \"Allow\",
///       \"Principal\": {
///         \"AWS\": \"arn:aws:iam::123456789012:root\"
///       },
///       \"Action\": [
///         \"organizations:DescribeOrganization\",
///         \"organizations:DescribeOrganizationalUnit\",
///         \"organizations:DescribeAccount\",
///         \"organizations:DescribePolicy\",
///         \"organizations:DescribeEffectivePolicy\",
///         \"organizations:ListRoots\",
///         \"organizations:ListOrganizationalUnitsForParent\",
///         \"organizations:ListParents\",
///         \"organizations:ListChildren\",
///         \"organizations:ListAccounts\",
///         \"organizations:ListAccountsForParent\",
///         \"organizations:ListPolicies\",
///         \"organizations:ListPoliciesForTarget\",
///         \"organizations:ListTargetsForPolicy\",
///         \"organizations:ListTagsForResource\"
///       ],
///       \"Resource\": \"*\"
///     }
///   ]
/// }
///             """)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:organizations:ResourcePolicy
///     properties:
///       content: |
///         {
///           \"Version\": \"2012-10-17\",
///           \"Statement\": [
///             {
///               \"Sid\": \"DelegatingNecessaryDescribeListActions\",
///               \"Effect\": \"Allow\",
///               \"Principal\": {
///                 \"AWS\": \"arn:aws:iam::123456789012:root\"
///               },
///               \"Action\": [
///                 \"organizations:DescribeOrganization\",
///                 \"organizations:DescribeOrganizationalUnit\",
///                 \"organizations:DescribeAccount\",
///                 \"organizations:DescribePolicy\",
///                 \"organizations:DescribeEffectivePolicy\",
///                 \"organizations:ListRoots\",
///                 \"organizations:ListOrganizationalUnitsForParent\",
///                 \"organizations:ListParents\",
///                 \"organizations:ListChildren\",
///                 \"organizations:ListAccounts\",
///                 \"organizations:ListAccountsForParent\",
///                 \"organizations:ListPolicies\",
///                 \"organizations:ListPoliciesForTarget\",
///                 \"organizations:ListTargetsForPolicy\",
///                 \"organizations:ListTagsForResource\"
///               ],
///               \"Resource\": \"*\"
///             }
///           ]
///         }
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.organizations.ResourcePolicy` using the resource policy ID. For example:
///
/// ```sh
/// $ pulumi import aws:organizations/resourcePolicy:ResourcePolicy example rp-12345678
/// ```
class ResourcePolicy extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the resource policy.
  late final pulumi.Output<String> arn;
  /// Content for the resource policy. The text must be correctly formatted JSON that complies with the syntax for the resource policy's type. See the [_AWS Organizations User Guide_](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_delegate_examples.html) for examples.
  late final pulumi.Output<String> content;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ResourcePolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourcePolicy]. {@macro pulumi_organizations_resource_policy_resource_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourcePolicy(
    String name, {
    ResourcePolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:organizations/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    content = registerOutput<String>('content');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [ResourcePolicy] resource's state with the given [name] and [id].
  static ResourcePolicy get(
    String name,
    pulumi.Input<String> id, {
    ResourcePolicyState? state,
  }) {
    return ResourcePolicy._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ResourcePolicy._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:organizations/resourcePolicy:ResourcePolicy',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    content = registerOutput<String>('content');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
