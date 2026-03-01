import 'package:pulumi/pulumi.dart' as pulumi;
import 'aws_govcloud_link_account_args.dart';

/// Use this resource to link an AWS GovCloud account to New Relic.
///
/// ## Prerequisite
///
/// To link an AWS GovCloud account to New Relic, you need an AWS GovCloud account. AWS GovCloud is designed to address the specific regulatory needs of United States federal, state, and local agencies, educational institutions, and their supporting ecosystem. It is an isolated AWS region designed to host sensitive data and regulated workloads in the cloud, helping customers support their US government compliance requirements.
///
/// To pull data from AWS GovCloud, follow the [steps outlined here](https://docs.newrelic.com/docs/infrastructure/amazon-integrations/get-started/connect-aws-govcloud-new-relic).
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as newrelic from "@pulumi/newrelic";
///
/// const foo = new newrelic.cloud.AwsGovcloudLinkAccount("foo", {
///     accountId: "1234567",
///     name: "My New Relic - AWS GovCloud Linked Account",
///     metricCollectionMode: "PUSH",
///     arn: "arn:aws:service:region:account-id:resource-id",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_newrelic as newrelic
///
/// foo = newrelic.cloud.AwsGovcloudLinkAccount("foo",
///     account_id="1234567",
///     name="My New Relic - AWS GovCloud Linked Account",
///     metric_collection_mode="PUSH",
///     arn="arn:aws:service:region:account-id:resource-id")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using NewRelic = Pulumi.NewRelic;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var foo = new NewRelic.Cloud.AwsGovcloudLinkAccount("foo", new()
///     {
///         AccountId = "1234567",
///         Name = "My New Relic - AWS GovCloud Linked Account",
///         MetricCollectionMode = "PUSH",
///         Arn = "arn:aws:service:region:account-id:resource-id",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-newrelic/sdk/v5/go/newrelic/cloud"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloud.NewAwsGovcloudLinkAccount(ctx, "foo", &cloud.AwsGovcloudLinkAccountArgs{
/// 			AccountId:            pulumi.String("1234567"),
/// 			Name:                 pulumi.String("My New Relic - AWS GovCloud Linked Account"),
/// 			MetricCollectionMode: pulumi.String("PUSH"),
/// 			Arn:                  pulumi.String("arn:aws:service:region:account-id:resource-id"),
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
/// import com.pulumi.newrelic.cloud.AwsGovcloudLinkAccount;
/// import com.pulumi.newrelic.cloud.AwsGovcloudLinkAccountArgs;
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
///         var foo = new AwsGovcloudLinkAccount("foo", AwsGovcloudLinkAccountArgs.builder()
///             .accountId("1234567")
///             .name("My New Relic - AWS GovCloud Linked Account")
///             .metricCollectionMode("PUSH")
///             .arn("arn:aws:service:region:account-id:resource-id")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   foo:
///     type: newrelic:cloud:AwsGovcloudLinkAccount
///     properties:
///       accountId: 1.234567e+06
///       name: My New Relic - AWS GovCloud Linked Account
///       metricCollectionMode: PUSH
///       arn: arn:aws:service:region:account-id:resource-id
/// ```
///
///
/// ## Import
///
/// Linked AWS GovCloud accounts can be imported using the `id`, e.g.
///
/// ```bash
/// $ terraform import newrelic_cloud_aws_govcloud_link_account.foo <id>
/// ```
class AwsGovcloudLinkAccount extends pulumi.CustomResource {
  /// The New Relic account ID to operate on. This allows the user to override the `account_id` attribute set on the provider. Defaults to the environment variable `NEW_RELIC_ACCOUNT_ID`, if not specified in the configuration.
  late final pulumi.Output<String> accountId;
  /// The Amazon Resource Name (ARN) of the IAM role.
  ///
  /// > **NOTE:** Altering the `account_id` (or) `metric_collection_mode` of an already applied `newrelic.cloud.AwsGovcloudLinkAccount` resource shall trigger a recreation of the resource, instead of an update.
  late final pulumi.Output<String> arn;
  /// The mode by which metric data is to be collected from the linked AWS GovCloud account. Defaults to `PULL`, if not specified in the configuration.
  /// - Use `PUSH` for Metric Streams and `PULL` for API Polling based metric collection respectively.
  late final pulumi.Output<String?> metricCollectionMode;
  /// The name/identifier of the AWS GovCloud - New Relic 'linked' account.
  late final pulumi.Output<String> name;

  /// Creates a new [AwsGovcloudLinkAccount].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [AwsGovcloudLinkAccount]. {@macro pulumi_cloud_aws_govcloud_link_account_aws_govcloud_link_account_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  AwsGovcloudLinkAccount(
    String name, {
    AwsGovcloudLinkAccountArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'newrelic:cloud/awsGovcloudLinkAccount:AwsGovcloudLinkAccount',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.accountId = registerOutput<String>('accountId');
    this.arn = registerOutput<String>('arn');
    this.metricCollectionMode = registerOutput<String?>('metricCollectionMode');
    this.name = registerOutput<String>('name');
  }
}
