import 'package:pulumi/pulumi.dart' as pulumi;
import 'package:aws_dart_console_slack_notification/main.dart' as app;

Future<void> main() async {
  await pulumi.Deployment.run(() => app.ConsoleSlackNotificationStack());
}
