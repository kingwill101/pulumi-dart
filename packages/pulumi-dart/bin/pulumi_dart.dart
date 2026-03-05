import 'dart:io';

import 'package:pulumi/src/cli/install_language_host_cli.dart';

Future<void> main(List<String> args) async {
  exitCode = await runPulumiDartCli(args, out: stdout, err: stderr);
}
