import 'package:pulumi/pulumi.dart' as pulumi;
import 'trail_args.dart';
import 'package:pulumi_aws/cloudtrail.dart' as pulumi_aws_cloudtrail;
import 'package:pulumi_aws/cloudwatch.dart' as pulumi_aws_cloudwatch;
import 'package:pulumi_aws/s3.dart' as pulumi_aws_s3;

class Trail extends pulumi.ComponentResource {
  /// The managed S3 Bucket where the Trail will place its logs.
  late final pulumi.Output<pulumi_aws_s3.Bucket?> bucket;
  /// The managed Cloudwatch Log Group.
  late final pulumi.Output<pulumi_aws_cloudwatch.LogGroup?> logGroup;
  /// The CloudTrail Trail.
  late final pulumi.Output<pulumi_aws_cloudtrail.Trail?> trail;

  /// Creates a new [Trail].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Trail]. {@macro pulumi_cloudtrail_trail_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Trail(
    String name, {
    TrailArgs? args,
    pulumi.ComponentResourceOptions? options,
  }) : super(
          'awsx:cloudtrail:Trail',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.ComponentResourceOptions(version: '3.9.0').merge(options),
          remote: true,
        ) {
    bucket = registerOutput<pulumi_aws_s3.Bucket?>('bucket');
    logGroup = registerOutput<pulumi_aws_cloudwatch.LogGroup?>('logGroup');
    trail = registerOutput<pulumi_aws_cloudtrail.Trail?>('trail');
  }
}
