import 'package:pulumi/pulumi.dart';
import 'resource_policy_args7.dart';

/// Provides a resource to manage a resource-based delegation policy that can be used to delegate policy management for AWS Organizations to specified member accounts to perform policy actions that are by default available only to the management account. See the [_AWS Organizations User Guide_](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_delegate_policies.html) for more information.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.organizations.ResourcePolicy("example", {content: `{
/// \\"Version\\": \\"2012-10-17\\",
/// \\"Statement\\": [
/// {
/// \\"Sid\\": \\"DelegatingNecessaryDescribeListActions\\",
/// \\"Effect\\": \\"Allow\\",
/// \\"Principal\\": {
/// \\"AWS\\": \\"arn:aws:iam::123456789012:root\\"
/// },
/// \\"Action\\": [
/// \\"organizations:DescribeOrganization\\",
/// \\"organizations:DescribeOrganizationalUnit\\",
/// \\"organizations:DescribeAccount\\",
/// \\"organizations:DescribePolicy\\",
/// \\"organizations:DescribeEffectivePolicy\\",
/// \\"organizations:ListRoots\\",
/// \\"organizations:ListOrganizationalUnitsForParent\\",
/// \\"organizations:ListParents\\",
/// \\"organizations:ListChildren\\",
/// \\"organizations:ListAccounts\\",
/// \\"organizations:ListAccountsForParent\\",
/// \\"organizations:ListPolicies\\",
/// \\"organizations:ListPoliciesForTarget\\",
/// \\"organizations:ListTargetsForPolicy\\",
/// \\"organizations:ListTagsForResource\\"
/// ],
/// \\"Resource\\": \\"*\\"
/// }
/// ]
/// }
/// `});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.organizations.ResourcePolicy("example", content="""{
/// \"Version\": \"2012-10-17\",
/// \"Statement\": [
/// {
/// \"Sid\": \"DelegatingNecessaryDescribeListActions\",
/// \"Effect\": \"Allow\",
/// \"Principal\": {
/// \"AWS\": \"arn:aws:iam::123456789012:root\"
/// },
/// \"Action\": [
/// \"organizations:DescribeOrganization\",
/// \"organizations:DescribeOrganizationalUnit\",
/// \"organizations:DescribeAccount\",
/// \"organizations:DescribePolicy\",
/// \"organizations:DescribeEffectivePolicy\",
/// \"organizations:ListRoots\",
/// \"organizations:ListOrganizationalUnitsForParent\",
/// \"organizations:ListParents\",
/// \"organizations:ListChildren\",
/// \"organizations:ListAccounts\",
/// \"organizations:ListAccountsForParent\",
/// \"organizations:ListPolicies\",
/// \"organizations:ListPoliciesForTarget\",
/// \"organizations:ListTargetsForPolicy\",
/// \"organizations:ListTagsForResource\"
/// ],
/// \"Resource\": \"*\"
/// }
/// ]
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
/// var example = new Aws.Organizations.ResourcePolicy("example", new()
/// {
/// Content = @"{
/// \""Version\"": \""2012-10-17\"",
/// \""Statement\"": [
/// {
/// \""Sid\"": \""DelegatingNecessaryDescribeListActions\"",
/// \""Effect\"": \""Allow\"",
/// \""Principal\"": {
/// \""AWS\"": \""arn:aws:iam::123456789012:root\""
/// },
/// \""Action\"": [
/// \""organizations:DescribeOrganization\"",
/// \""organizations:DescribeOrganizationalUnit\"",
/// \""organizations:DescribeAccount\"",
/// \""organizations:DescribePolicy\"",
/// \""organizations:DescribeEffectivePolicy\"",
/// \""organizations:ListRoots\"",
/// \""organizations:ListOrganizationalUnitsForParent\"",
/// \""organizations:ListParents\"",
/// \""organizations:ListChildren\"",
/// \""organizations:ListAccounts\"",
/// \""organizations:ListAccountsForParent\"",
/// \""organizations:ListPolicies\"",
/// \""organizations:ListPoliciesForTarget\"",
/// \""organizations:ListTargetsForPolicy\"",
/// \""organizations:ListTagsForResource\""
/// ],
/// \""Resource\"": \""*\""
/// }
/// ]
/// }
/// ",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/organizations"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := organizations.NewResourcePolicy(ctx, "example", &organizations.ResourcePolicyArgs{
/// Content: pulumi.String(`{
/// \"Version\": \"2012-10-17\",
/// \"Statement\": [
/// {
/// \"Sid\": \"DelegatingNecessaryDescribeListActions\",
/// \"Effect\": \"Allow\",
/// \"Principal\": {
/// \"AWS\": \"arn:aws:iam::123456789012:root\"
/// },
/// \"Action\": [
/// \"organizations:DescribeOrganization\",
/// \"organizations:DescribeOrganizationalUnit\",
/// \"organizations:DescribeAccount\",
/// \"organizations:DescribePolicy\",
/// \"organizations:DescribeEffectivePolicy\",
/// \"organizations:ListRoots\",
/// \"organizations:ListOrganizationalUnitsForParent\",
/// \"organizations:ListParents\",
/// \"organizations:ListChildren\",
/// \"organizations:ListAccounts\",
/// \"organizations:ListAccountsForParent\",
/// \"organizations:ListPolicies\",
/// \"organizations:ListPoliciesForTarget\",
/// \"organizations:ListTargetsForPolicy\",
/// \"organizations:ListTagsForResource\"
/// ],
/// \"Resource\": \"*\"
/// }
/// ]
/// }
/// `),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var example = new ResourcePolicy("example", ResourcePolicyArgs.builder()
/// .content("""
/// {
/// \"Version\": \"2012-10-17\",
/// \"Statement\": [
/// {
/// \"Sid\": \"DelegatingNecessaryDescribeListActions\",
/// \"Effect\": \"Allow\",
/// \"Principal\": {
/// \"AWS\": \"arn:aws:iam::123456789012:root\"
/// },
/// \"Action\": [
/// \"organizations:DescribeOrganization\",
/// \"organizations:DescribeOrganizationalUnit\",
/// \"organizations:DescribeAccount\",
/// \"organizations:DescribePolicy\",
/// \"organizations:DescribeEffectivePolicy\",
/// \"organizations:ListRoots\",
/// \"organizations:ListOrganizationalUnitsForParent\",
/// \"organizations:ListParents\",
/// \"organizations:ListChildren\",
/// \"organizations:ListAccounts\",
/// \"organizations:ListAccountsForParent\",
/// \"organizations:ListPolicies\",
/// \"organizations:ListPoliciesForTarget\",
/// \"organizations:ListTargetsForPolicy\",
/// \"organizations:ListTagsForResource\"
/// ],
/// \"Resource\": \"*\"
/// }
/// ]
/// }
/// """)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:organizations:ResourcePolicy
/// properties:
/// content: |
/// {
/// \"Version\": \"2012-10-17\",
/// \"Statement\": [
/// {
/// \"Sid\": \"DelegatingNecessaryDescribeListActions\",
/// \"Effect\": \"Allow\",
/// \"Principal\": {
/// \"AWS\": \"arn:aws:iam::123456789012:root\"
/// },
/// \"Action\": [
/// \"organizations:DescribeOrganization\",
/// \"organizations:DescribeOrganizationalUnit\",
/// \"organizations:DescribeAccount\",
/// \"organizations:DescribePolicy\",
/// \"organizations:DescribeEffectivePolicy\",
/// \"organizations:ListRoots\",
/// \"organizations:ListOrganizationalUnitsForParent\",
/// \"organizations:ListParents\",
/// \"organizations:ListChildren\",
/// \"organizations:ListAccounts\",
/// \"organizations:ListAccountsForParent\",
/// \"organizations:ListPolicies\",
/// \"organizations:ListPoliciesForTarget\",
/// \"organizations:ListTargetsForPolicy\",
/// \"organizations:ListTagsForResource\"
/// ],
/// \"Resource\": \"*\"
/// }
/// ]
/// }
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.organizations.ResourcePolicy`" pulumi-lang-dotnet="`aws.organizations.ResourcePolicy`" pulumi-lang-go="`organizations.ResourcePolicy`" pulumi-lang-python="`organizations.ResourcePolicy`" pulumi-lang-yaml="`aws.organizations.ResourcePolicy`" pulumi-lang-java="`aws.organizations.ResourcePolicy`">`aws.organizations.ResourcePolicy`</span> using the resource policy ID. For example:
///
/// ```sh
/// $ pulumi import aws:organizations/resourcePolicy:ResourcePolicy example rp-12345678
/// ```
class ResourcePolicy7 extends CustomResource {
  /// Amazon Resource Name (ARN) of the resource policy.
  late final Output<String> arn;

  /// Content for the resource policy. The text must be correctly formatted JSON that complies with the syntax for the resource policy's type. See the [_AWS Organizations User Guide_](https://docs.aws.amazon.com/organizations/latest/userguide/orgs_manage_policies_delegate_examples.html) for examples.
  late final Output<String> content;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ResourcePolicy7(
    String name, {
    ResourcePolicyArgs7? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:organizations/resourcePolicy:ResourcePolicy',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.content = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
