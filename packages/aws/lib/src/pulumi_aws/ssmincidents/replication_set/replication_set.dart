import 'package:pulumi/pulumi.dart';
import '../replication_set_region/replication_set_region.dart';
import 'replication_set_args.dart';

/// Provides a resource for managing a replication set in AWS Systems Manager Incident Manager.
///
/// > **NOTE:** Deleting a replication set also deletes all Incident Manager related data including response plans, incident records, contacts and escalation plans.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// Create a replication set.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const replicationSetName = new aws.ssmincidents.ReplicationSet("replicationSetName", {
/// regions: [{
/// name: "us-west-2",
/// }],
/// tags: {
/// exampleTag: "exampleValue",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// replication_set_name = aws.ssmincidents.ReplicationSet("replicationSetName",
/// regions=[{
/// "name": "us-west-2",
/// }],
/// tags={
/// "exampleTag": "exampleValue",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var replicationSetName = new Aws.SsmIncidents.ReplicationSet("replicationSetName", new()
/// {
/// Regions = new[]
/// {
/// new Aws.SsmIncidents.Inputs.ReplicationSetRegionArgs
/// {
/// Name = "us-west-2",
/// },
/// },
/// Tags =
/// {
/// { "exampleTag", "exampleValue" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmincidents"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssmincidents.NewReplicationSet(ctx, "replicationSetName", &ssmincidents.ReplicationSetArgs{
/// Regions: ssmincidents.ReplicationSetRegionArray{
/// &ssmincidents.ReplicationSetRegionArgs{
/// Name: pulumi.String("us-west-2"),
/// },
/// },
/// Tags: pulumi.StringMap{
/// "exampleTag": pulumi.String("exampleValue"),
/// },
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
/// import com.pulumi.aws.ssmincidents.ReplicationSet;
/// import com.pulumi.aws.ssmincidents.ReplicationSetArgs;
/// import com.pulumi.aws.ssmincidents.inputs.ReplicationSetRegionArgs;
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
/// var replicationSetName = new ReplicationSet("replicationSetName", ReplicationSetArgs.builder()
/// .regions(ReplicationSetRegionArgs.builder()
/// .name("us-west-2")
/// .build())
/// .tags(Map.of("exampleTag", "exampleValue"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// replicationSetName:
/// type: aws:ssmincidents:ReplicationSet
/// properties:
/// regions:
/// - name: us-west-2
/// tags:
/// exampleTag: exampleValue
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Add a Region to a replication set. (You can add only one Region at a time.)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const replicationSetName = new aws.ssmincidents.ReplicationSet("replicationSetName", {regions: [
/// {
/// name: "us-west-2",
/// },
/// {
/// name: "ap-southeast-2",
/// },
/// ]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// replication_set_name = aws.ssmincidents.ReplicationSet("replicationSetName", regions=[
/// {
/// "name": "us-west-2",
/// },
/// {
/// "name": "ap-southeast-2",
/// },
/// ])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var replicationSetName = new Aws.SsmIncidents.ReplicationSet("replicationSetName", new()
/// {
/// Regions = new[]
/// {
/// new Aws.SsmIncidents.Inputs.ReplicationSetRegionArgs
/// {
/// Name = "us-west-2",
/// },
/// new Aws.SsmIncidents.Inputs.ReplicationSetRegionArgs
/// {
/// Name = "ap-southeast-2",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmincidents"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssmincidents.NewReplicationSet(ctx, "replicationSetName", &ssmincidents.ReplicationSetArgs{
/// Regions: ssmincidents.ReplicationSetRegionArray{
/// &ssmincidents.ReplicationSetRegionArgs{
/// Name: pulumi.String("us-west-2"),
/// },
/// &ssmincidents.ReplicationSetRegionArgs{
/// Name: pulumi.String("ap-southeast-2"),
/// },
/// },
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
/// import com.pulumi.aws.ssmincidents.ReplicationSet;
/// import com.pulumi.aws.ssmincidents.ReplicationSetArgs;
/// import com.pulumi.aws.ssmincidents.inputs.ReplicationSetRegionArgs;
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
/// var replicationSetName = new ReplicationSet("replicationSetName", ReplicationSetArgs.builder()
/// .regions(
/// ReplicationSetRegionArgs.builder()
/// .name("us-west-2")
/// .build(),
/// ReplicationSetRegionArgs.builder()
/// .name("ap-southeast-2")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// replicationSetName:
/// type: aws:ssmincidents:ReplicationSet
/// properties:
/// regions:
/// - name: us-west-2
/// - name: ap-southeast-2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Delete a Region from a replication set. (You can delete only one Region at a time.)
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const replicationSetName = new aws.ssmincidents.ReplicationSet("replicationSetName", {regions: [{
/// name: "us-west-2",
/// }]});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// replication_set_name = aws.ssmincidents.ReplicationSet("replicationSetName", regions=[{
/// "name": "us-west-2",
/// }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var replicationSetName = new Aws.SsmIncidents.ReplicationSet("replicationSetName", new()
/// {
/// Regions = new[]
/// {
/// new Aws.SsmIncidents.Inputs.ReplicationSetRegionArgs
/// {
/// Name = "us-west-2",
/// },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmincidents"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ssmincidents.NewReplicationSet(ctx, "replicationSetName", &ssmincidents.ReplicationSetArgs{
/// Regions: ssmincidents.ReplicationSetRegionArray{
/// &ssmincidents.ReplicationSetRegionArgs{
/// Name: pulumi.String("us-west-2"),
/// },
/// },
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
/// import com.pulumi.aws.ssmincidents.ReplicationSet;
/// import com.pulumi.aws.ssmincidents.ReplicationSetArgs;
/// import com.pulumi.aws.ssmincidents.inputs.ReplicationSetRegionArgs;
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
/// var replicationSetName = new ReplicationSet("replicationSetName", ReplicationSetArgs.builder()
/// .regions(ReplicationSetRegionArgs.builder()
/// .name("us-west-2")
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// replicationSetName:
/// type: aws:ssmincidents:ReplicationSet
/// properties:
/// regions:
/// - name: us-west-2
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Basic Usage with an AWS Customer Managed Key
///
/// Create a replication set with an AWS Key Management Service (AWS KMS) customer manager key:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const exampleKey = new aws.kms.Key("example_key", {});
/// const replicationSetName = new aws.ssmincidents.ReplicationSet("replicationSetName", {
/// regions: [{
/// name: "us-west-2",
/// kmsKeyArn: exampleKey.arn,
/// }],
/// tags: {
/// exampleTag: "exampleValue",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_key = aws.kms.Key("example_key")
/// replication_set_name = aws.ssmincidents.ReplicationSet("replicationSetName",
/// regions=[{
/// "name": "us-west-2",
/// "kms_key_arn": example_key.arn,
/// }],
/// tags={
/// "exampleTag": "exampleValue",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var exampleKey = new Aws.Kms.Key("example_key");
///
/// var replicationSetName = new Aws.SsmIncidents.ReplicationSet("replicationSetName", new()
/// {
/// Regions = new[]
/// {
/// new Aws.SsmIncidents.Inputs.ReplicationSetRegionArgs
/// {
/// Name = "us-west-2",
/// KmsKeyArn = exampleKey.Arn,
/// },
/// },
/// Tags =
/// {
/// { "exampleTag", "exampleValue" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kms"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ssmincidents"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// exampleKey, err := kms.NewKey(ctx, "example_key", nil)
/// if err != nil {
/// return err
/// }
/// _, err = ssmincidents.NewReplicationSet(ctx, "replicationSetName", &ssmincidents.ReplicationSetArgs{
/// Regions: ssmincidents.ReplicationSetRegionArray{
/// &ssmincidents.ReplicationSetRegionArgs{
/// Name:      pulumi.String("us-west-2"),
/// KmsKeyArn: exampleKey.Arn,
/// },
/// },
/// Tags: pulumi.StringMap{
/// "exampleTag": pulumi.String("exampleValue"),
/// },
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
/// import com.pulumi.aws.kms.Key;
/// import com.pulumi.aws.ssmincidents.ReplicationSet;
/// import com.pulumi.aws.ssmincidents.ReplicationSetArgs;
/// import com.pulumi.aws.ssmincidents.inputs.ReplicationSetRegionArgs;
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
/// var exampleKey = new Key("exampleKey");
///
/// var replicationSetName = new ReplicationSet("replicationSetName", ReplicationSetArgs.builder()
/// .regions(ReplicationSetRegionArgs.builder()
/// .name("us-west-2")
/// .kmsKeyArn(exampleKey.arn())
/// .build())
/// .tags(Map.of("exampleTag", "exampleValue"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// exampleKey:
/// type: aws:kms:Key
/// name: example_key
/// replicationSetName:
/// type: aws:ssmincidents:ReplicationSet
/// properties:
/// regions:
/// - name: us-west-2
/// kmsKeyArn: ${exampleKey.arn}
/// tags:
/// exampleTag: exampleValue
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import an Incident Manager replication. For example:
///
/// ```sh
/// $ pulumi import aws:ssmincidents/replicationSet:ReplicationSet replicationSetName import
/// ```
class ReplicationSet extends CustomResource {
  /// The ARN of the replication set.
  late final Output<String> arn;

  /// The ARN of the user who created the replication set.
  late final Output<String> createdBy;

  /// If <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>, the last region in a replication set cannot be deleted.
  late final Output<bool> deletionProtected;

  /// A timestamp showing when the replication set was last modified.
  late final Output<String> lastModifiedBy;

  /// The replication set's Regions. Use <span pulumi-lang-nodejs="`regions`" pulumi-lang-dotnet="`Regions`" pulumi-lang-go="`regions`" pulumi-lang-python="`regions`" pulumi-lang-yaml="`regions`" pulumi-lang-java="`regions`">`regions`</span> instead.
  late final Output<List<ReplicationSetRegion>> region;

  /// The replication set's Regions.
  late final Output<List<ReplicationSetRegion>> regions;

  /// The current status of the Region.
  /// * Valid Values: `ACTIVE` | `CREATING` | `UPDATING` | `DELETING` | `FAILED`
  late final Output<String> status;

  /// Key-value map of resource tags. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  ///
  /// For information about the maximum allowed number of Regions and tag value constraints, see [CreateReplicationSet in the *AWS Systems Manager Incident Manager API Reference*](https://docs.aws.amazon.com/incident-manager/latest/APIReference/API_CreateReplicationSet.html).
  ///
  /// > **NOTE:** The Region specified by a provider must always be one of the Regions specified for the replication set. This is especially important when you perform complex update operations.
  ///
  /// > **NOTE:** After a replication set is created, you can add or delete only one Region at a time.
  ///
  /// > **NOTE:** Incident Manager does not support updating the customer managed key associated with a replication set. Instead, for a replication set with multiple Regions, you must first delete a Region from the replication set, then re-add it with a different customer managed key in separate deploy operations. For a replication set with only one Region, the entire replication set must be deleted and recreated. To do this, comment out the replication set and all response plans, and then run the deploy command to recreate the replication set with the new customer managed key.
  ///
  /// > **NOTE:** You must either use AWS-owned keys on all regions of a replication set, or customer managed keys. To change between an AWS owned key and a customer managed key, a replication set and it associated data must be deleted and recreated.
  ///
  /// > **NOTE:** If possible, create all the customer managed keys you need (using the deploy command) before you create the replication set, or create the keys and replication set in the same deploy command. Otherwise, to delete a replication set, you must run one deploy command to delete the replication set and another to delete the AWS KMS keys used by the replication set. Deleting the AWS KMS keys before deleting the replication set results in an error. In that case, you must manually reenable the deleted key using the AWS Management Console before you can delete the replication set.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  ReplicationSet(
    String name, {
    ReplicationSetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ssmincidents/replicationSet:ReplicationSet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.createdBy = Output.createUnknown<String>();
    this.deletionProtected = Output.createUnknown<bool>();
    this.lastModifiedBy = Output.createUnknown<String>();
    this.region = Output.createUnknown<List<ReplicationSetRegion>>();
    this.regions = Output.createUnknown<List<ReplicationSetRegion>>();
    this.status = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
