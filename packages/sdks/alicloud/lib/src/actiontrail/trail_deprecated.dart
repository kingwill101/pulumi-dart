import 'package:pulumi/pulumi.dart' as pulumi;
import 'trail_deprecated_args.dart';
import 'trail_deprecated_state.dart';

/// &gt; **DEPRECATED:**  This resource has been renamed to alicloud.actiontrail.Trail from version 1.95.0.
///
/// Provides a new resource to manage [Action Trail](https://www.alibabacloud.com/help/doc-detail/28804.htm).
///
/// &gt; **NOTE:** Available in 1.35.0+
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as alicloud from "@pulumi/alicloud";
///
/// // Create a new action trail.
/// const foo = new alicloud.actiontrail.TrailDeprecated("foo", {
///     name: "action-trail",
///     eventRw: "Write-test",
///     ossBucketName: bucket.id,
///     roleName: attach.roleName,
///     ossKeyPrefix: "at-product-account-audit-B",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_alicloud as alicloud
///
/// # Create a new action trail.
/// foo = alicloud.actiontrail.TrailDeprecated("foo",
///     name="action-trail",
///     event_rw="Write-test",
///     oss_bucket_name=bucket["id"],
///     role_name=attach["roleName"],
///     oss_key_prefix="at-product-account-audit-B")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AliCloud = Pulumi.AliCloud;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // Create a new action trail.
///     var foo = new AliCloud.ActionTrail.TrailDeprecated("foo", new()
///     {
///         Name = "action-trail",
///         EventRw = "Write-test",
///         OssBucketName = bucket.Id,
///         RoleName = attach.RoleName,
///         OssKeyPrefix = "at-product-account-audit-B",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-alicloud/sdk/v3/go/alicloud/actiontrail"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		// Create a new action trail.
/// 		_, err := actiontrail.NewTrailDeprecated(ctx, "foo", &actiontrail.TrailDeprecatedArgs{
/// 			Name:          pulumi.String("action-trail"),
/// 			EventRw:       pulumi.String("Write-test"),
/// 			OssBucketName: pulumi.Any(bucket.Id),
/// 			RoleName:      pulumi.Any(attach.RoleName),
/// 			OssKeyPrefix:  pulumi.String("at-product-account-audit-B"),
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
/// import com.pulumi.alicloud.actiontrail.TrailDeprecated;
/// import com.pulumi.alicloud.actiontrail.TrailDeprecatedArgs;
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
///         // Create a new action trail.
///         var foo = new TrailDeprecated("foo", TrailDeprecatedArgs.builder()
///             .name("action-trail")
///             .eventRw("Write-test")
///             .ossBucketName(bucket.id())
///             .roleName(attach.roleName())
///             .ossKeyPrefix("at-product-account-audit-B")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # Create a new action trail.
///   foo:
///     type: alicloud:actiontrail:TrailDeprecated
///     properties:
///       name: action-trail
///       eventRw: Write-test
///       ossBucketName: ${bucket.id}
///       roleName: ${attach.roleName}
///       ossKeyPrefix: at-product-account-audit-B
/// ```
///
///
/// 📚 Need more examples? VIEW MORE EXAMPLES
///
/// ## Import
///
/// Action trail can be imported using the id, e.g.
///
/// ```sh
/// $ pulumi import alicloud:actiontrail/trailDeprecated:TrailDeprecated foo abc12345678
/// ```
class TrailDeprecated extends pulumi.CustomResource {
  late final pulumi.Output<String> createTime;
  late final pulumi.Output<String?> dataEventTrailRegion;
  /// Indicates whether the event is a read or a write event. Valid values: Read, Write, and All. Default value: Write.
  late final pulumi.Output<String> eventRw;
  late final pulumi.Output<String?> eventSelectors;
  late final pulumi.Output<bool?> isOrganizationTrail;
  late final pulumi.Output<String?> maxComputeProjectArn;
  late final pulumi.Output<String> maxComputeWriteRoleArn;
  late final pulumi.Output<String?> mnsTopicArn;
  /// The name of the trail to be created, which must be unique for an account.
  late final pulumi.Output<String> name;
  /// The OSS bucket to which the trail delivers logs. Ensure that this is an existing OSS bucket.
  late final pulumi.Output<String?> ossBucketName;
  /// The prefix of the specified OSS bucket name. This parameter can be left empty.
  late final pulumi.Output<String?> ossKeyPrefix;
  late final pulumi.Output<String?> ossWriteRoleArn;
  late final pulumi.Output<String> regionId;
  /// The RAM role in ActionTrail permitted by the user.
  late final pulumi.Output<String?> roleName;
  /// The unique ARN of the Log Service project.
  late final pulumi.Output<String?> slsProjectArn;
  /// The unique ARN of the Log Service role.
  ///
  /// &gt; **NOTE:** `sls_project_arn` and `sls_write_role_arn` should be set or not set at the same time when actiontrail delivers logs.
  late final pulumi.Output<String> slsWriteRoleArn;
  late final pulumi.Output<String> status;
  late final pulumi.Output<String> trailName;
  late final pulumi.Output<String> trailRegion;

  /// Creates a new [TrailDeprecated].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TrailDeprecated]. {@macro pulumi_actiontrail_trail_deprecated_trail_deprecated_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TrailDeprecated(
    String name, {
    TrailDeprecatedArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:actiontrail/trailDeprecated:TrailDeprecated',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dataEventTrailRegion = registerOutput<String?>('dataEventTrailRegion');
    eventRw = registerOutput<String>('eventRw');
    eventSelectors = registerOutput<String?>('eventSelectors');
    isOrganizationTrail = registerOutput<bool?>('isOrganizationTrail');
    maxComputeProjectArn = registerOutput<String?>('maxComputeProjectArn');
    maxComputeWriteRoleArn = registerOutput<String>('maxComputeWriteRoleArn');
    mnsTopicArn = registerOutput<String?>('mnsTopicArn');
    this.name = registerOutput<String>('name');
    ossBucketName = registerOutput<String?>('ossBucketName');
    ossKeyPrefix = registerOutput<String?>('ossKeyPrefix');
    ossWriteRoleArn = registerOutput<String?>('ossWriteRoleArn');
    regionId = registerOutput<String>('regionId');
    roleName = registerOutput<String?>('roleName');
    slsProjectArn = registerOutput<String?>('slsProjectArn');
    slsWriteRoleArn = registerOutput<String>('slsWriteRoleArn');
    status = registerOutput<String>('status');
    trailName = registerOutput<String>('trailName');
    trailRegion = registerOutput<String>('trailRegion');
  }

  /// Gets an existing [TrailDeprecated] resource's state with the given [name] and [id].
  static TrailDeprecated get(
    String name,
    pulumi.Input<String> id, {
    TrailDeprecatedState? state,
  }) {
    return TrailDeprecated._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  TrailDeprecated._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'alicloud:actiontrail/trailDeprecated:TrailDeprecated',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    createTime = registerOutput<String>('createTime');
    dataEventTrailRegion = registerOutput<String?>('dataEventTrailRegion');
    eventRw = registerOutput<String>('eventRw');
    eventSelectors = registerOutput<String?>('eventSelectors');
    isOrganizationTrail = registerOutput<bool?>('isOrganizationTrail');
    maxComputeProjectArn = registerOutput<String?>('maxComputeProjectArn');
    maxComputeWriteRoleArn = registerOutput<String>('maxComputeWriteRoleArn');
    mnsTopicArn = registerOutput<String?>('mnsTopicArn');
    this.name = registerOutput<String>('name');
    ossBucketName = registerOutput<String?>('ossBucketName');
    ossKeyPrefix = registerOutput<String?>('ossKeyPrefix');
    ossWriteRoleArn = registerOutput<String?>('ossWriteRoleArn');
    regionId = registerOutput<String>('regionId');
    roleName = registerOutput<String?>('roleName');
    slsProjectArn = registerOutput<String?>('slsProjectArn');
    slsWriteRoleArn = registerOutput<String>('slsWriteRoleArn');
    status = registerOutput<String>('status');
    trailName = registerOutput<String>('trailName');
    trailRegion = registerOutput<String>('trailRegion');
  }
}
