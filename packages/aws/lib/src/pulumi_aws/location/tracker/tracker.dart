import 'package:pulumi/pulumi.dart';
import 'tracker_args.dart';

/// Provides a Location Service Tracker.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.location.Tracker("example", {trackerName: "example"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.location.Tracker("example", tracker_name="example")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Location.Tracker("example", new()
/// {
/// TrackerName = "example",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/location"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := location.NewTracker(ctx, "example", &location.TrackerArgs{
/// TrackerName: pulumi.String("example"),
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
/// import com.pulumi.aws.location.Tracker;
/// import com.pulumi.aws.location.TrackerArgs;
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
/// var example = new Tracker("example", TrackerArgs.builder()
/// .trackerName("example")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:location:Tracker
/// properties:
/// trackerName: example
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.location.Tracker`" pulumi-lang-dotnet="`aws.location.Tracker`" pulumi-lang-go="`location.Tracker`" pulumi-lang-python="`location.Tracker`" pulumi-lang-yaml="`aws.location.Tracker`" pulumi-lang-java="`aws.location.Tracker`">`aws.location.Tracker`</span> resources using the tracker name. For example:
///
/// ```sh
/// $ pulumi import aws:location/tracker:Tracker example example
/// ```
class Tracker extends CustomResource {
  /// The timestamp for when the tracker resource was created in ISO 8601 format.
  late final Output<String> createTime;

  /// The optional description for the tracker resource.
  late final Output<String?> description;

  /// A key identifier for an AWS KMS customer managed key assigned to the Amazon Location resource.
  late final Output<String?> kmsKeyId;

  /// The position filtering method of the tracker resource. Valid values: `TimeBased`, `DistanceBased`, `AccuracyBased`. Default: `TimeBased`.
  late final Output<String?> positionFiltering;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value tags for the tracker. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The Amazon Resource Name (ARN) for the tracker resource. Used when you need to specify a resource across all AWS.
  late final Output<String> trackerArn;

  /// The name of the tracker resource.
  ///
  /// The following arguments are optional:
  late final Output<String> trackerName;

  /// The timestamp for when the tracker resource was last updated in ISO 8601 format.
  late final Output<String> updateTime;

  Tracker(
    String name, {
    TrackerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:location/tracker:Tracker',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.kmsKeyId = registerOutput<String?>('kmsKeyId');
    this.positionFiltering = registerOutput<String?>('positionFiltering');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.trackerArn = registerOutput<String>('trackerArn');
    this.trackerName = registerOutput<String>('trackerName');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
